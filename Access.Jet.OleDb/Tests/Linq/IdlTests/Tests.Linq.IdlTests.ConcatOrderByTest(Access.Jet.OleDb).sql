﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Rank],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	(
		SELECT
			0 as [Rank],
			IIF(False, '', NULL) as [FirstName],
			IIF(False, '', NULL) as [LastName]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] < 0
		UNION ALL
		SELECT
			[p_1].[PersonID] as [Rank],
			[p_1].[FirstName],
			[p_1].[LastName]
		FROM
			[Person] [p_1]
	) [t1]
ORDER BY
	[t1].[Rank],
	[t1].[FirstName],
	[t1].[LastName]

