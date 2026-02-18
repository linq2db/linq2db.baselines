-- SqlServer.2019.MS SqlServer.2019

WITH [cte]
(
	[entry_FirstName],
	[entry_ID],
	[entry_LastName],
	[entry_MiddleName],
	[entry_Gender]
)
AS
(
	SELECT
		[x].[FirstName],
		[x].[PersonID],
		[x].[LastName],
		[x].[MiddleName],
		[x].[Gender]
	FROM
		[Person] [x]
)
SELECT
	[t1].[entry_FirstName],
	[t1].[entry_ID],
	[t1].[entry_LastName],
	[t1].[entry_MiddleName],
	[t1].[entry_Gender]
FROM
	[cte] [t1]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]

