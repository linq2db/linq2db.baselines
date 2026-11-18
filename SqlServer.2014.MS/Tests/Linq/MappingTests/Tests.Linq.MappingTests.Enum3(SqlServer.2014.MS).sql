-- SqlServer.2014.MS SqlServer.2014
DECLARE @fm Char(1) -- AnsiStringFixedLength
SET     @fm = N'F'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] <> @fm

