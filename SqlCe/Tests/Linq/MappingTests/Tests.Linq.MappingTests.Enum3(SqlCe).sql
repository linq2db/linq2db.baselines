BeforeExecute
-- SqlCe
DECLARE @fm NVarChar(1) -- String
SET     @fm = 'F'

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] <> @fm

