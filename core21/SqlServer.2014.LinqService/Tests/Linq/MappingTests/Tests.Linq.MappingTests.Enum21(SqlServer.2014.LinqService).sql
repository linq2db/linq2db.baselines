BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @gender_1 Char(1) -- AnsiStringFixedLength
SET     @gender_1 = N'M'

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @gender_1

