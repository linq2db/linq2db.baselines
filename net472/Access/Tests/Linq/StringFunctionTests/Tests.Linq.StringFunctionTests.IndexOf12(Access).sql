BeforeExecute
-- Access AccessOleDb
DECLARE @p1 Boolean
SET     @p1 = True

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Iif(@p1, 0, InStr(1, [p].[FirstName], '', 1) - 1) = 0 AND
	[p].[PersonID] = 1

