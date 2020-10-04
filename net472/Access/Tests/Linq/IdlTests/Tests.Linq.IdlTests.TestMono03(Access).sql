BeforeExecute
-- Access AccessOleDb
DECLARE @p1 VarWChar(1) -- String
SET     @p1 = 'A'
DECLARE @p2 Integer -- Int32
SET     @p2 = 1

SELECT
	[y].[FirstName]
FROM
	[Person] [y]
UNION ALL
SELECT
	[t1].[FirstName]
FROM
	(
		SELECT
			[x].[FirstName]
		FROM
			[Person] [x],
			[Patient] [z]
		WHERE
			([x].[FirstName] = @p1 OR [z].[PersonID] = @p2)
	) [t1]

