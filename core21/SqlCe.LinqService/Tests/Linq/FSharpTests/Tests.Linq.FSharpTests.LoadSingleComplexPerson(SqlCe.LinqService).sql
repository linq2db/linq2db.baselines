BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT TOP (@take) 
	[p].[PersonID], 
	[p].[Gender], 
	[p].[FirstName], 
	[p].[MiddleName], 
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

