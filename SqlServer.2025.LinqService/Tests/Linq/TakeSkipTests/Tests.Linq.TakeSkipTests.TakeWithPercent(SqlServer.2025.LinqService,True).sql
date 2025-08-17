BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 50

SELECT TOP (@take) PERCENT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

