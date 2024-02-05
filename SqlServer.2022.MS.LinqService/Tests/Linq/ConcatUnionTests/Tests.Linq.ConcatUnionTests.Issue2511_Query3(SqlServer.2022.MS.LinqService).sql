BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(
		SELECT TOP (@take)
			[p].[FirstName],
			[p].[PersonID] as [ID],
			[p].[LastName],
			[p].[MiddleName],
			[p].[Gender]
		FROM
			[Person] [p]
	) [t1]
UNION ALL
SELECT
	[t2].[FirstName],
	[t2].[PersonID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	[Person] [t2]

