BeforeExecute
-- Access AccessOleDb
DECLARE @Length_1 Integer -- Int32
SET     @Length_1 = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Iif(@Length_1 = 0 AND Len([p].[LastName]) > 2, 2, InStr(3, [p].[LastName], 'e', 1) - 1) = 4 AND
	[p].[PersonID] = 2

