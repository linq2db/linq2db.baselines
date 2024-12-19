BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
		[x].[FirstName],
		[x].[PersonID],
		[x].[LastName],
		[x].[MiddleName],
		[x].[Gender],
		1
	FROM
		[Person] [x]
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
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[person_1].[FirstName],
	[person_1].[PersonID],
	[person_1].[LastName],
	[person_1].[MiddleName],
	[person_1].[Gender]
FROM
	[Person] [person_1]

