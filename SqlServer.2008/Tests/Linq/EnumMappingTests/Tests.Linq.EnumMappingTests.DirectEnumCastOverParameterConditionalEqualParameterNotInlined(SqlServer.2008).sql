-- SqlServer.2008
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
	CASE
		WHEN [p].[PersonID] > 2 THEN @male
		ELSE @female
	END = @gender

-- SqlServer.2008
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

