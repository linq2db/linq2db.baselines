BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

WITH [CTE_1]
(
	[entry_FirstName],
	[entry_ID],
	[entry_LastName],
	[entry_MiddleName],
	[entry_Gender],
	[rn]
)
AS
(
	SELECT
		[x_1].[FirstName],
		[x_1].[ID],
		[x_1].[LastName],
		[x_1].[MiddleName],
		[x_1].[Gender],
		[x_1].[rn]
	FROM
		(
			SELECT
				CAST(1 AS Int) as [rn],
				[x].[FirstName],
				[x].[PersonID] as [ID],
				[x].[LastName],
				[x].[MiddleName],
				[x].[Gender]
			FROM
				[Person] [x]
			UNION ALL
			SELECT
				CAST(2 AS Int) as [rn],
				[person_1].[FirstName],
				[person_1].[PersonID] as [ID],
				[person_1].[LastName],
				[person_1].[MiddleName],
				[person_1].[Gender]
			FROM
				[Person] [person_1]
		) [x_1]
	WHERE
		[x_1].[rn] = 1
)
SELECT TOP (1)
	[t1].[entry_FirstName],
	[t1].[entry_ID],
	[t1].[entry_LastName],
	[t1].[entry_MiddleName],
	[t1].[entry_Gender],
	[t1].[rn]
FROM
	[CTE_1] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[t1].[rn]
FROM
	(
		SELECT
			CAST(1 AS Int) as [rn],
			[x].[FirstName],
			[x].[PersonID] as [ID],
			[x].[LastName],
			[x].[MiddleName],
			[x].[Gender]
		FROM
			[Person] [x]
		UNION ALL
		SELECT
			CAST(2 AS Int) as [rn],
			[person_1].[FirstName],
			[person_1].[PersonID] as [ID],
			[person_1].[LastName],
			[person_1].[MiddleName],
			[person_1].[Gender]
		FROM
			[Person] [person_1]
	) [t1]
WHERE
	[t1].[rn] = 1

