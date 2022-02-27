BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Bit -- Boolean
SET     @p1 = False

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Iif(?, 0, InStr(1, [p].[FirstName], 'oh', 1) - 1) = 1 AND
	[p].[PersonID] = 1

