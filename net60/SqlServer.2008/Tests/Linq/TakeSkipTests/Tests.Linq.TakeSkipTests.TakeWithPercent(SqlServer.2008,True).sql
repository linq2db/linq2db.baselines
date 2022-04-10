BeforeExecute
-- SqlServer.2008
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

