﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Details],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[x].[Id1] as [Details]
		FROM
			[MasterClass] [x]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Details] = [d].[MasterId]

BeforeExecute
DisposeTransaction
BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id1]
FROM
	[MasterClass] [m_1]

