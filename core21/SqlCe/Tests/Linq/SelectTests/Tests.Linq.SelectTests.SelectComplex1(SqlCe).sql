BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[_].[PersonID], 
	[_].[Gender], 
	[_].[FirstName], 
	[_].[MiddleName], 
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1

