
#include "rwmake.ch"

user function ZBROWZA2()
	//--< variáveis >---------------------------------------------------------------------------
	
	//Indica a permissão ou não para a operação (pode-se utilizar 'ExecBlock')
	local cVldAlt := ".T." // Operacao: ALTERACAO
	local cVldExc := ".T." // Operacao: EXCLUSAO
	
	//trabalho/apoio
	local cAlias
	
	//--< procedimentos >--------------------------------	---------------------------------------
	cAlias := "ZA2"
	chkFile(cAlias)
	dbSelectArea(cAlias)
	//indices
	dbSetOrder(1)
	axCadastro(cAlias, "Cadastro MArca", cVldExc, cVldAlt)
	
Return
//--< fim de arquivo >----------------------------------------------------------------------
