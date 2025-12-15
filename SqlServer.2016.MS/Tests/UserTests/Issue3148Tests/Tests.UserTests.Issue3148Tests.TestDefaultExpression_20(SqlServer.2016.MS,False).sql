-- SqlServer.2016.MS SqlServer.2016

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[LastName] LIKE N'%x' ESCAPE N'~' AND Convert(VarBinary(8000), RIGHT([r].[LastName], LEN(N'x'))) = Convert(VarBinary(8000), N'x')

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[LastName] LIKE N'%x' ESCAPE N'~' AND Convert(VarBinary(8000), RIGHT([r].[LastName], LEN(N'x'))) = Convert(VarBinary(8000), N'x')

