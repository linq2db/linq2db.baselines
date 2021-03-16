BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 NVarChar(1) -- String
SET     @p1 = 'A'
DECLARE @p2 Int -- Int32
SET     @p2 = 1

SELECT
	[y].[FirstName]
FROM
	[Person] [y]
UNION ALL
SELECT
	[t1].[Name]
FROM
	(
		SELECT
			[x].[FirstName] as [Name]
		FROM
			[Person] [x],
			[Patient] [z]
		WHERE
			([x].[FirstName] = ? OR [z].[PersonID] = ?)
	) [t1]

