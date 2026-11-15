-- SqlServer.2022
DECLARE @male NChar(1) -- StringFixedLength
SET     @male = N'M'
DECLARE @female NChar(1) -- StringFixedLength
SET     @female = N'F'
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = N'F'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, @male, @female) = @gender

-- SqlServer.2022
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

