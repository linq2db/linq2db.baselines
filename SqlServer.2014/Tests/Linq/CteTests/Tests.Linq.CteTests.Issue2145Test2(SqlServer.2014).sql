BeforeExecute
-- SqlServer.2014

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
		(VALUES
			(10,N'FN1',N'LN1',NULL,'M'), (11,N'FN2',NULL,NULL,'F')
		) [t1]([ID], [FirstName], [LastName], [MiddleName], [Gender])
)
SELECT
	[p].[FirstName],
	[p].[ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[CTE_1] [p]
WHERE
	[p].[ID] = 11

