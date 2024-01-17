BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'Jo%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], 2)) = Convert(VarBinary(8000), N'Jo') AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'jo%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([p].[FirstName], 2)) = Convert(VarBinary(8000), N'jo') AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE N'Jo%' ESCAPE N'~' OR Convert(VarBinary(8000), LEFT([p].[FirstName], 2)) <> Convert(VarBinary(8000), N'Jo')) AND
	[p].[PersonID] = 1

