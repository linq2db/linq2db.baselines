-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Jo%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(N'Jo'))) = Convert(VarBinary(8000), N'Jo') AND
	[p].[PersonID] = 1

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'jo%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(N'jo'))) = Convert(VarBinary(8000), N'jo') AND
	[p].[PersonID] = 1

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE N'Jo%' ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], LEN(N'Jo'))) <> Convert(VarBinary(8000), N'Jo')) AND
	[p].[PersonID] = 1

