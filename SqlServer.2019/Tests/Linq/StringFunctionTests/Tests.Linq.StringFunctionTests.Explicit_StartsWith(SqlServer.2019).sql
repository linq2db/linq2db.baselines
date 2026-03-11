-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'Hall%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([r].[Diagnosis], LEN(N'Hall'))) = Convert(VarBinary(8000), N'Hall')

-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'hall%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([r].[Diagnosis], LEN(N'hall'))) = Convert(VarBinary(8000), N'hall')

-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'hall%' ESCAPE N'~'

-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'hall%' ESCAPE N'~'

