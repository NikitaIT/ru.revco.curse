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
void __fastcall TForm2::Button3Click(TObject *Sender)
{
        Item->Caption=meNomber->Text;
                Item->SubItems->Strings[0]= dtpTimeStart->Time.TimeString();
                Item->SubItems->Strings[1]= dtpDateStart->Date.DateString();
                Item->SubItems->Strings[2]= dtpTimeEnd->Time.TimeString();
                Item->SubItems->Strings[3]= dtpDateEnd->Date.DateString();
                Item->SubItems->Strings[4]= mePlaceStart->Text;
                Item->SubItems->Strings[5]= mePlaceEnd->Text;
                Item->SubItems->Strings[6]= cbeType->Text;
        Form1->Enabled=true;
        Close(); //закрытие второй формы
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Closing(TObject *Sender, TCloseAction &Action)
{
        Form1->Enabled=true;
}
//---------------------------------------------------------------------------
