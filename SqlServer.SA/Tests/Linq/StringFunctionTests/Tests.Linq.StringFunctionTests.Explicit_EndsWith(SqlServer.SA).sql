-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%Persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[Diagnosis], LEN(N'Persecution'))) = Convert(VarBinary(8000), N'Persecution')

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE N'%persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[Diagnosis], LEN(N'persecution'))) = Convert(VarBinary(8000), N'persecution')

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%persecution' ESCAPE N'~'

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	Lower([r].[Diagnosis]) LIKE N'%persecution' ESCAPE N'~'

