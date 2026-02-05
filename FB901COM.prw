#Include 'Totvs.ch'

User Function FB901COM()
	Local cRet := ''
	If AllTrim(SF1->F1_TIPO) $ 'D/B'
		SA1->(dbSetOrder(1))
		If SA1->(MsSeek(xFilial("SA1") + SF1->F1_FORNECE + SF1->F1_LOJA))
			cRet := SA1->A1_NOME
		EndIf
	Else
		SA2->(dbSetOrder(1))
		If SA2->(MsSeek(xFilial("SA2") + SF1->F1_FORNECE + SF1->F1_LOJA))
			cRet := SA2->A2_NOME
		EndIf
	EndIf
Return cRet