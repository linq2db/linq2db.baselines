﻿BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[m_2].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
	) [m_2]
		INNER JOIN [DetailClass] [d] ON ([m_2].[Id1] = [d].[MasterId])

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[m_2].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
	) [m_2]
		INNER JOIN [DetailClass] [d] ON ([m_2].[Id1] = [d].[MasterId])
ORDER BY
	[d].[DetailId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[m_1].[Value],
	[m_1].[ByteValues]
FROM
	[MasterClass] [m_1]

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1]
		FROM
			[MasterClass] [t1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON ([m_1].[Id1] = [d].[MasterId])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]

