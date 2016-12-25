//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <Menus.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <Chart.hpp>
#include <Series.hpp>
#include <TeEngine.hpp>
#include <TeeProcs.hpp>
#include <Grids.hpp>
#include <ValEdit.hpp>
#include <Mask.hpp>
#include <string>
#include <iostream>
#include <stdio.h>
#include <Math.hpp>
enum Op{
        CREATE,
        READ,
        DEL,
        UPDATE,
};
bool TestMod=1;
bool rev;
int ColumnToSort;
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TListView *lvTrains;
        TMainMenu *mmTopMenu;
        TMenuItem *miFileView;
        TMenuItem *miOpen;
        TMenuItem *miSave;
        TMenuItem *miClose;
        TMenuItem *miEditView;
        TMenuItem *miDelete;
        TMenuItem *miEdit;
        TOpenDialog *OpenDialog1;
        TSaveDialog *SaveDialog1;
        TButton *btnMiddleTime;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TButton *btnLoadingByType;
        TLabel *Label4;
        TEdit *eLoadingByType;
        TChart *cGraf;
        TBarSeries *Series1;
        TLabel *Label5;
        TLabel *Label6;
        TLabel *Label7;
        TLabel *Label8;
        TLabel *Label9;
        TLabel *Label10;
        TLabel *Label11;
        TLabel *Label12;
        TLabel *Label13;
        TButton *btnAdd;
        TListBox *lbMiddleTime;
        TButton *btnGraf;
        TEdit *ebtnMiddleTime;
        TValueListEditor *kvleLoadingByType;
        TMaskEdit *meNomber;
        TMaskEdit *mePlaceEnd;
        TMaskEdit *mePlaceStart;
        TDateTimePicker *dtpDateEnd;
        TDateTimePicker *dtpTimeEnd;
        TDateTimePicker *dtpDateStart;
        TDateTimePicker *dtpTimeStart;
        TComboBoxEx *cbeType;
        void __fastcall miOpenClick(TObject *Sender);
        void __fastcall miSaveClick(TObject *Sender);
        void __fastcall btnAddClick(TObject *Sender);
        void __fastcall miEditClick(TObject *Sender);
        void __fastcall Selection(TObject *Sender, TListItem *Item,
          bool Selected);
        void __fastcall miDeleteClick(TObject *Sender);
        void __fastcall btnLoadingByTypeClick(TObject *Sender);
        void __fastcall btnGrafClick(TObject *Sender);
        void __fastcall btnMiddleTimeClick(TObject *Sender);
        void __fastcall lbMiddleTimeClick(TObject *Sender);
        void __fastcall miCloseClick(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall lvTrainsColumnClick(TObject *Sender, TListColumn *Column);
        void __fastcall lvTrainsCompare(TObject *Sender, TListItem *Item1,
          TListItem *Item2, int Data, int &Compare);
private:	// User declarations
        void CRUDToListOfMiddleTime(Op op);
        void CRUDToListOfLoadingByType(Op op);
        void insertRow(AnsiString Str);
        AnsiString MyFName;
        std::string* split(std::string s, std::string delimiter = " ");
        void fileSaver(AnsiString FileName);
        void fileLoader(AnsiString FileName);
        void paintGraph();
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
        void Test();
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
