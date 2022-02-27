BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%Persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[Diagnosis], 11)) = Convert(VarBinary(8000), N'Persecution')

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[Diagnosis], 11)) = Convert(VarBinary(8000), N'persecution')

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%persecution' ESCAPE N'~'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%persecution' ESCAPE N'~'

