#include <vcl.h>
#pragma hdrstop
#include "Main.h"
#include "Change.h"
#include <map>
#include <math.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//-----------функция расчёта среднего времени в пути-------------------------
AnsiString TForm1::TimeInWay(AnsiString searchType)
{
        TDateTime DTO, DTP;
        double y;
        double Days, Hours, Mins;
        double DaysG=0;
        double HoursG=0;
        double MinsG=0;
        int k=0;
        TListItems * RowItems = lvTrains->Items;//список списков
        for(int i = 0; i < RowItems->Count; i++)
        {
                TListItem * Row = RowItems->Item[i];//список из списоков
                if((Row->SubItems->Strings[TYPE]==searchType)||(searchType=="Все")){
                        DTO = StrToDateTime(
                                Row->SubItems->Strings[DATE_START] + " "
                                + Row->SubItems->Strings[TIME_START]);
	                DTP = StrToDateTime(
                                Row->SubItems->Strings[DATE_END] + " "
                                + Row->SubItems->Strings[TIME_END]);
	                y = modf((double)DTP - DTO, &Days);
	                y = modf((24 * y), &Hours);
	                y = modf((60 * y), &Mins);
	                DaysG=DaysG+Days;
	                HoursG=HoursG+Hours;
	                MinsG=MinsG+Mins;
	                k++;
                }
        }
  return(IntToStr((int)DaysG/k) + " дн. " + IntToStr((int)HoursG/k) + " час. " + IntToStr((int)MinsG/k) + " мин.");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::btnMiddleTimeClick(TObject *Sender)
{
        AnsiString searchType = cbeLoadingByType->Text;
        eMiddleTime->Text = TimeInWay(searchType);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::lbMiddleTimeClick(TObject *Sender)
{
        /*
   if(ListBox1->ItemIndex!=-1)         //чтобы не было ошибок в программе, предупреждаем возможность обратиться к функции(если тип не выбран), деактивируя кнопку обращения к ней(см.выше)
    Button1->Enabled=true;
   else
    Button1->Enabled=false;
    */
}
//---------------------------------------------------------------------------
void TForm1::Test(){
        if(TestMod){
        AnsiString s = "";
                s += "Test;";
                s += "dtpTimeStart;";
                s += "dtpDateStart;";
                s += "dtpTimeEnd;";
                s += "dtpDateEnd;";
                s += "mePlaceStart;";
                s += "mePlaceEnd;";
                s += "cbeType->Text";
                //insertRow(s);


         insertRow("2;01:43:45;02.12.2016;03:43:29;04.12.2016;3;Ифу;Скорый;");
         insertRow("20;01:13:45;04.12.2016;03:43:29;04.12.2016;3;АБВ;Нваап;");
         insertRow("2989;11:43:45;12.10.2016;03:43:29;04.12.2016;йцу;ЫВА;Вваап;");
         }
}
void __fastcall TForm1::FormCreate(TObject *Sender)
{
        Test();
        miDelete->Enabled=false;   
	miEdit->Enabled=false;        
}
//---------------------------------------------------------------------------
                        //СДЕЛАНО
                        //СДЕЛАНО
                        //СДЕЛАНО
                        //СДЕЛАНО
                        //СДЕЛАНО
                        //СДЕЛАНО
                        //СДЕЛАНО
                        //СДЕЛАНО
//---------------------------------------------------------------------------
void __fastcall TForm1::btnAddClick(TObject *Sender)
{
        if(meNomber->Text!=""
        && mePlaceStart->Text!=""
        && mePlaceEnd->Text!="")
        {
                AnsiString s = "";
                s += meNomber->Text+";";
                s += dtpTimeStart->Time.TimeString()+";";
                s += dtpDateStart->Date.DateString()+";";
                s += dtpTimeEnd->Time.TimeString()+";";
                s += dtpDateEnd->Date.DateString()+";";
                s += mePlaceStart->Text+";";
                s += mePlaceEnd->Text+";";
                s += cbeType->Text;
                insertRow(s);
        } else {
        MessageBox(0,"Пожалуйста, заполните все поля для добавления перед подтверждением.","",0);
        }
}
//---------------------Разделение строки на подстроки------------------------
std::string* TForm1::split(std::string s, std::string delimiter) {
	size_t pos = 0;
	std::string* arr = new std::string[100];
	int i=0;
	while ((pos = s.find(delimiter)) != std::string::npos) {
		arr[i++] = s.substr(0, pos);
		s.erase(0, pos + delimiter.length());
	}
	arr[i] = s;
	return arr;
}
//---------------------------------------------------------------------------
void TForm1::insertRow(AnsiString Str){

        std::string* arr = split((Str.c_str()),";");
        TListItem * ListItem = lvTrains->Items->Add();
        ListItem->Caption = arr[0].c_str();
        for(int i = 1; i < lvTrains->Columns->Count; i++)
        {
                ListItem->SubItems->Add(arr[i].c_str());
        }
}
//---------------------------------------------------------------------------
void TForm1::fileLoader(AnsiString FileName){
        TStringList * ptStrintList;
                ptStrintList=new TStringList();
                ptStrintList->LoadFromFile(FileName);
                for(int i=0;i<ptStrintList->Count;i++){
                        insertRow(ptStrintList->Strings[i]);
                }

        ptStrintList->Free();
}
//---------------------------------------------------------------------------
void TForm1::fileSaver(AnsiString FileName){

        TStringList * ptStrintList = new TStringList();
        TListItems * RowItems = lvTrains->Items;//список списков
        for(int i = 1; i < RowItems->Count; i++)
        {
                TListItem * Row = RowItems->Item[i];//список из списоков
                AnsiString tmpRow="";
                tmpRow += Row->Caption+";";
                for(int j = 0; j < lvTrains->Columns->Count-1; j++)
                {
                        tmpRow += Row->SubItems->Strings[j]+";";
                }
                ptStrintList->Add(tmpRow);

        }
        ptStrintList->SaveToFile(FileName);
        ptStrintList->Free();
}
//----------------------Открытие файла в меню--------------------------------
void __fastcall TForm1::miOpenClick(TObject *Sender)
{
        if (OpenDialog1->Execute())
        {
                MyFName = OpenDialog1->FileName;
                fileLoader(MyFName);
        }
}
//---------------сохраняем изменённые данные в файл--------------------------
void __fastcall TForm1::miSaveClick(TObject *Sender)
{
        if(MyFName!= "")
                fileSaver(MyFName);
        else
        if(SaveDialog1->Execute())
        {
                MyFName = SaveDialog1->FileName;
                fileSaver(MyFName);
        }
}
//--------вызов окошка подтверждения закрытия формы--------------------------
void __fastcall TForm1::miCloseClick(TObject *Sender)
{
        if(MessageBox(Handle,
                "Вы уверены, что хотите выйти?",
                "Уведомление",
                MB_YESNO | MB_ICONQUESTION) == IDYES)
        Close();
}
//------------------Добавление в форму редактирования------------------------
void __fastcall TForm1::Selection(TObject *Sender, TListItem *Item,
	  bool Selected)
{
  Form2->Item = Item;
  if(lvTrains->ItemIndex!=-1)   //если выбрана какая-либо строка с данными
  {
        Form2->meNomber->Text=Item->Caption;
        TDateTime dt;//"2010-10-06 22:33:44"
        if (TryStrToTime(Item->SubItems->Strings[0],dt)) {
                Form2->dtpTimeStart->DateTime = dt;
        }
        if (TryStrToDate(Item->SubItems->Strings[1],dt)) {
                Form2->dtpDateStart->DateTime = dt;
        }
        if (TryStrToTime(Item->SubItems->Strings[2],dt)) {
                Form2->dtpTimeEnd->DateTime = dt;
        }
        if (TryStrToDate(Item->SubItems->Strings[3],dt)) {
                Form2->dtpDateEnd->DateTime = dt;
        }

        Form2->mePlaceStart->Text=Item->SubItems->Strings[4];
        Form2->mePlaceEnd->Text=Item->SubItems->Strings[5];
        int index = cbeType->Items->IndexOf((AnsiString)Item->SubItems->Strings[6]);
        Form2->cbeType->ItemIndex =(index!=-1)?index:0;

	miDelete->Enabled=true;         //активация кнопки Удалить
	miEdit->Enabled=true;           // активация кнопки Редактировать, чтобы позволить изменять данные(до этого была отключена во избежание вывода в компоненты TEdit второй формы ереси всякой)
  }
  else
  {
	miDelete->Enabled=false;        //деактивация кнопки Удалить
	miEdit->Enabled=false;          // деактивация кнопки Редактировать
  }

}
//---------------------------------------------------------------------------
void __fastcall TForm1::lvTrainsColumnClick(TObject *Sender, TListColumn *Column)
{
    if ((rev==true)||(ColumnToSort != Column->Index)){rev=false;}
    else if((rev==false)||(ColumnToSort != Column->Index)){rev=true;}
    ColumnToSort = Column->Index;
    ((TCustomListView *)Sender)->AlphaSort(); //функция сортировки "стандартная"
}
//---------------------------------------------------------------------------
void __fastcall TForm1::miEditClick(TObject *Sender)
{
  Form1->Enabled=false;   //обращение ко второй форме(редактирование строки)
  Form2->Show();
}

//---------------------------------------------------------------------------
void __fastcall TForm1::miDeleteClick(TObject *Sender)
{
 if(MessageBox(Handle,
                "Вы уверены, что хотите убрать выбранный поезд из расписания?",
                "Уведомление",
                MB_YESNO | MB_ICONQUESTION)
        == IDYES)
  {
      lvTrains->Selected->Delete();
  }
}
//-----------------------Сортировка по столбцам------------------------------
void __fastcall TForm1::lvTrainsCompare(TObject *Sender, TListItem *Item1,
      TListItem *Item2, int Data, int &Compare)
{
if (rev==false)
    {
    if ((ColumnToSort == 0))
    {Compare = CompareText(
                Item1->Caption,
                Item2->Caption);}
    else if ((ColumnToSort == 1)||(ColumnToSort == 3))
    {Compare = CompareTime(
                StrToTime(Item1->SubItems->Strings[ColumnToSort-1]),
                StrToTime(Item2->SubItems->Strings[ColumnToSort-1]));}
    else if ((ColumnToSort == 2)||(ColumnToSort == 4))
    {Compare = CompareDate(
                StrToDate(Item1->SubItems->Strings[ColumnToSort-1]),
                StrToDate(Item2->SubItems->Strings[ColumnToSort-1]));}
    else
    {Compare = CompareText(
                Item1->SubItems->Strings[ColumnToSort-1],
                Item2->SubItems->Strings[ColumnToSort-1]);}
    }
    else
    {
    if ((ColumnToSort == 0))
    {Compare = CompareText(
                Item2->Caption,
                Item1->Caption);}
    else if ((ColumnToSort == 1)||(ColumnToSort == 3))
    {Compare = CompareTime(
                StrToTime(Item2->SubItems->Strings[ColumnToSort-1]),
                StrToTime(Item1->SubItems->Strings[ColumnToSort-1]));}
    else if ((ColumnToSort == 2)||(ColumnToSort == 4))
    {Compare = CompareDate(
                StrToDate(Item2->SubItems->Strings[ColumnToSort-1]),
                StrToDate(Item1->SubItems->Strings[ColumnToSort-1]));}
    else
    {Compare = CompareText(
                Item2->SubItems->Strings[ColumnToSort-1],
                Item1->SubItems->Strings[ColumnToSort-1]);}
    }
}
//------------------------построение графика----------------------------------
void TForm1::paintGraph(){
        Series1->Clear();
        for(int i(1);i<kvleLoadingByType->RowCount;i++)
            Series1->AddXY(i,
                        StrToInt(kvleLoadingByType->Cells[1][i]),
                        kvleLoadingByType->Cells[0][i],
                        clRed);

}
//---------------------расчёт загруженности станций--------------------------
void __fastcall TForm1::btnLoadingByTypeClick(TObject *Sender)
{
        while(kvleLoadingByType->RowCount>2)
        kvleLoadingByType->DeleteRow(1);
        std::map <AnsiString,int> Map;
        std::map <AnsiString,int>::iterator at;

        AnsiString searchType = cbeLoadingByType->Text;
        int result=0;
        TListItems * RowItems = lvTrains->Items;//список списков
        for(int i = 0; i < RowItems->Count; i++)
        {
                TListItem * Row = RowItems->Item[i];//список из списоков
                AnsiString ind0= Row->SubItems->Strings[TYPE];
                if(Row->SubItems->Strings[TYPE]==searchType){
                        result++;
                        Map[Row->SubItems->Strings[PLASE_START]]++;
                        Map[Row->SubItems->Strings[PLASE_END]]++;
                }
        }
        for(at = Map.begin(); at != Map.end(); at++) {
                kvleLoadingByType->Values[at->first] = at->second;
        }
	eLoadingByType->Text =result;
        btnGraph->Enabled=true;
        btnGraph->Click();
}
//------------------------построение графика---------------------------------
void __fastcall TForm1::btnGraphClick(TObject *Sender)
{
        paintGraph();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sbSearchClick(TObject *Sender)
{
        lbMiddleTime->Clear();
        AnsiString searchString = meSearch->Text;
        int result=0;
        TListItems * RowItems = lvTrains->Items;//список списков
        for(int i = 0; i < RowItems->Count; i++)
        {
                TListItem * Row = RowItems->Item[i];//список из списоков

                for(int j = 0; j < lvTrains->Columns->Count-1; j++)
                {
                        std::string str =Row->SubItems->Strings[j].c_str();
                        if((str).find(searchString.c_str())!= std::string::npos)
                        lbMiddleTime->Items->Add(Row->Caption);
                }
        }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::meSearchKeyPress(TObject *Sender, char &Key)
{
        lbMiddleTime->Clear();
        AnsiString searchString = meSearch->Text;
        int result=0;
        TListItems * RowItems = lvTrains->Items;//список списков
        for(int i = 0; i < RowItems->Count; i++)
        {
                TListItem * Row = RowItems->Item[i];//список из списоков

                for(int j = 0; j < lvTrains->Columns->Count-1; j++)
                {
                        std::string str =Row->SubItems->Strings[j].c_str();
                        if((str).find(searchString.c_str())!= std::string::npos){
                                lbMiddleTime->Items->Add(Row->Caption);
                                break;
                        }
                }
        }        
}
//---------------------------------------------------------------------------

