﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Key_1],
	[d].[FirstName],
	[d].[PersonID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[t1].[FirstName] as [Key_1]
		FROM
			[Person] [t1]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[Key_1] = [d].[FirstName]

BeforeExecute
DisposeTransaction
BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[FirstName]
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

