BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (2)
	[p].[LastName] as [Value_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

