﻿BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Amount],
	[d].[Currency]
FROM
	[TransactionEntity] [m_1]
		INNER JOIN [LineEntity] [d] ON ([m_1].[Id] = [d].[TransactionId])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[Id],
	[x].[ValidOn]
FROM
	[TransactionEntity] [x]
ORDER BY
	[x].[ValidOn]

