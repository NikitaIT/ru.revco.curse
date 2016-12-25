//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Change.h"
#include "Main.h"
#include <stdio.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
typedef struct        //объ€вл€ем структуру
{char Train[4];
char DepartureTime[6];
char DepartureDate[20];
char ArrivalTime[6];
char ArrivalDate[20];
char Out[10];
char In[10];
char Type[20];
} type;


extern type base[100];

void __fastcall TForm2::Button3Click(TObject *Sender)
{
  strcpy(base[Form1->ListView1->ItemIndex].Train, Edit3->Text.c_str()); // копируем строку, содержащуюс€ в компоненте TEdit обратно в нужной элемент массива(так дл€ всех TEdit ниже)
  strcpy(base[Form1->ListView1->ItemIndex].DepartureTime, Edit4->Text.c_str());
  strcpy(base[Form1->ListView1->ItemIndex].DepartureDate, Edit5->Text.c_str());
  strcpy(base[Form1->ListView1->ItemIndex].ArrivalTime, Edit6->Text.c_str());
  strcpy(base[Form1->ListView1->ItemIndex].ArrivalDate, Edit7->Text.c_str());
  strcpy(base[Form1->ListView1->ItemIndex].Out, Edit8->Text.c_str());
  strcpy(base[Form1->ListView1->ItemIndex].In, Edit9->Text.c_str());
  strcpy(base[Form1->ListView1->ItemIndex].Type, Edit10->Text.c_str());
  Form1->Enabled=true;
  Close(); //закрытие второй формы
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Closing(TObject *Sender, TCloseAction &Action)
{
  Form1->Enabled=true;
}
//---------------------------------------------------------------------------
