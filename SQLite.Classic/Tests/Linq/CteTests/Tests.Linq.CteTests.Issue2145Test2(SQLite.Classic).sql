-- SQLite.Classic SQLite

WITH [CTE_1]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
AS
(
	SELECT
		[t1].[ID],
		[t1].[FirstName],
		[t1].[LastName],
		[t1].[MiddleName],
		[t1].[Gender]
	FROM
		(
			SELECT NULL [ID], NULL [FirstName], NULL [LastName], NULL [MiddleName], NULL [Gender] WHERE 1 = 0
			UNION ALL
			VALUES
				(10,'FN1','LN1',NULL,'M'), (11,'FN2',NULL,NULL,'F')
			) [t1]
)
SELECT
	[p].[FirstName],
	[p].[ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(
		SELECT
			[t2].[ID],
			[t2].[FirstName],
			[t2].[LastName],
			[t2].[MiddleName],
			[t2].[Gender]
		FROM
			[CTE_1] [t2]
	) [p]
WHERE
	[p].[ID] = 11

