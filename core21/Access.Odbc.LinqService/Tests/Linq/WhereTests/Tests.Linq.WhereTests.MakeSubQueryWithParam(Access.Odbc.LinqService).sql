BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p_1].[PersonID],
	[p_1].[FirstName]
FROM
	(
		SELECT
			[p].[PersonID] + ? as [PersonID],
			[p].[FirstName]
		FROM
			[Person] [p]
	) [p_1]
WHERE
	[p_1].[PersonID] = 2

