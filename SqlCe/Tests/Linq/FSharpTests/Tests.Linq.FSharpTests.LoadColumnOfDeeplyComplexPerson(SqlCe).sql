BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT TOP (2)
	[p].[LastName] as [Value_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

