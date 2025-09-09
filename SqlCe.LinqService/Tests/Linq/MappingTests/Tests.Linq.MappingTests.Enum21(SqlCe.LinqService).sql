BeforeExecute
-- SqlCe (asynchronously)
DECLARE @gender NVarChar(1) -- String
SET     @gender = 'M'

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @gender

