BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'Hall%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([r].[Diagnosis], 4)) = Convert(VarBinary(8000), N'Hall')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'hall%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([r].[Diagnosis], 4)) = Convert(VarBinary(8000), N'hall')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'hall%' ESCAPE N'~'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'hall%' ESCAPE N'~'

