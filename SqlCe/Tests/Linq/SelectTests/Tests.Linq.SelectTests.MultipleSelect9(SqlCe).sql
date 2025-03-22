BeforeExecute
-- SqlCe

SELECT
	([p5].[PersonID] * (LEN('22.') - 1)) / 2 as [ID],
	[p5].[FirstName]
FROM
	[Person] [p5]

