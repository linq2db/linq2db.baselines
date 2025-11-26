-- SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[s].[FirstName],
	[s].[PersonID],
	[s].[LastName],
	[s].[MiddleName],
	[s].[Gender],
	CAST(PersonID AS Float)
FROM
	[Person] [s]

