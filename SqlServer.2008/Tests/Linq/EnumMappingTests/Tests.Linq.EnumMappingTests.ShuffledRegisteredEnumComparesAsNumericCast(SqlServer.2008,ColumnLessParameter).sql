-- SqlServer.2008
DECLARE @value NChar(1) -- StringFixedLength
SET     @value = N'M'

SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN [p].[PersonID] > 2 THEN N'M'
		ELSE N'F'
	END = @value

-- SqlServer.2008
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

