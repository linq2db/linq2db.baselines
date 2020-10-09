BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 50

SELECT TOP (@take) PERCENT 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]

