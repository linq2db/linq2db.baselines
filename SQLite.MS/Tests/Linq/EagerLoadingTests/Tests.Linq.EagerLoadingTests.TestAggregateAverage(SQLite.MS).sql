﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	(
		SELECT
			AVG(CAST([t2].[DetailId] AS Float))
		FROM
			(
				SELECT
					[t1].[DetailId]
				FROM
					(
						SELECT DISTINCT
							[a_Details].[DetailId]
						FROM
							[DetailClass] [a_Details]
						WHERE
							[m_1].[Id1] = [a_Details].[MasterId]
					) [t1]
				ORDER BY
					[t1].[DetailId]
				LIMIT 5 OFFSET 1
			) [t2]
	)
FROM
	[MasterClass] [m_1]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[DetailClass] [a_Details_1]
		WHERE
			[m_1].[Id1] = [a_Details_1].[MasterId]
	) > 1

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
--  SQLite.MS SQLite

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
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

BeforeExecute
DisposeTransaction
BeforeExecute
--  SQLite.MS SQLite

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]

