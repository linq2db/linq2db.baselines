BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE N'%Persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([p].[Diagnosis], LEN(N'Persecution'))) = Convert(VarBinary(8000), N'Persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE N'%Persecution' ESCAPE N'~' OR Convert(VarBinary(8000), RIGHT([p].[Diagnosis], LEN(N'Persecution'))) <> Convert(VarBinary(8000), N'Persecution')) AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE N'%persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([p].[Diagnosis], LEN(N'persecution'))) = Convert(VarBinary(8000), N'persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE N'%persecution' ESCAPE N'~' OR Convert(VarBinary(8000), RIGHT([p].[Diagnosis], LEN(N'persecution'))) <> Convert(VarBinary(8000), N'persecution')) AND
	[p].[PersonID] = 2

