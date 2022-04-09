BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE N'%Persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([p].[Diagnosis], 11)) = Convert(VarBinary(8000), N'Persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE N'%Persecution' ESCAPE N'~' OR Convert(VarBinary(8000), RIGHT([p].[Diagnosis], 11)) <> Convert(VarBinary(8000), N'Persecution')) AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE N'%persecution' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([p].[Diagnosis], 11)) = Convert(VarBinary(8000), N'persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE N'%persecution' ESCAPE N'~' OR Convert(VarBinary(8000), RIGHT([p].[Diagnosis], 11)) <> Convert(VarBinary(8000), N'persecution')) AND
	[p].[PersonID] = 2

