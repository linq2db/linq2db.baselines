BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%Persecution' ESCAPE '~' AND
	Convert(VarBinary(8000), SUBSTRING([p].[Diagnosis], LEN([p].[Diagnosis]) - 10, 11)) = Convert(VarBinary(8000), 'Persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%Persecution' ESCAPE '~' OR Convert(VarBinary(8000), SUBSTRING([p].[Diagnosis], LEN([p].[Diagnosis]) - 10, 11)) <> Convert(VarBinary(8000), 'Persecution')) AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%persecution' ESCAPE '~' AND
	Convert(VarBinary(8000), SUBSTRING([p].[Diagnosis], LEN([p].[Diagnosis]) - 10, 11)) = Convert(VarBinary(8000), 'persecution') AND
	[p].[PersonID] = 2

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%persecution' ESCAPE '~' OR Convert(VarBinary(8000), SUBSTRING([p].[Diagnosis], LEN([p].[Diagnosis]) - 10, 11)) <> Convert(VarBinary(8000), 'persecution')) AND
	[p].[PersonID] = 2

