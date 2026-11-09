-- SqlServer.Contained.MS SqlServer.2025
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
	@gender = CASE
		WHEN [p].[PersonID] > 3 THEN N'M'
		WHEN [p].[PersonID] > 2 THEN N'O'
		ELSE N'F'
	END

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

