-- SqlServer.CS.MS SqlServer.2025
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'
DECLARE @gender_1 Char(1) -- AnsiStringFixedLength
SET     @gender_1 = N'F'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, [p].[Gender], @Gender) = @gender_1

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

