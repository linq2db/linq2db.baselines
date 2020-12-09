BeforeExecute
-- Sybase.Managed Sybase
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
	CASE
		WHEN @Length_1 = 0 AND Len([p].[LastName]) > 2
			THEN 2
		ELSE CharIndex('e', Substring([p].[LastName], 3, Len([p].[LastName]))) + 1
	END = 4 AND [p].[PersonID] = 2

