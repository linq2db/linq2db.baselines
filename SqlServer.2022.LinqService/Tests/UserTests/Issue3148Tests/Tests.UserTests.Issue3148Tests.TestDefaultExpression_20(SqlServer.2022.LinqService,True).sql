BeforeExecute
-- SqlServer.2022 (asynchronously)

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

BeforeExecute
-- SqlServer.2022 (asynchronously)

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

