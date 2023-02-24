BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'Hall%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([r].[Diagnosis], 4)) = Convert(VarBinary(8000), N'Hall')

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'hall%' ESCAPE N'~' AND Convert(VarBinary(8000), LEFT([r].[Diagnosis], 4)) = Convert(VarBinary(8000), N'hall')

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'hall%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'hall%' ESCAPE N'~'

