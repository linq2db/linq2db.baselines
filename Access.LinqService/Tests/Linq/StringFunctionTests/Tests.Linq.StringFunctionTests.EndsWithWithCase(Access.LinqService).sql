BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%Persecution' AND InStr(LEN([p].[Diagnosis]) - 10, [p].[Diagnosis], 'Persecution', 0) = (LEN([p].[Diagnosis]) - 10) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%Persecution' OR InStr(LEN([p].[Diagnosis]) - 10, [p].[Diagnosis], 'Persecution', 0) <> (LEN([p].[Diagnosis]) - 10)) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%persecution' AND InStr(LEN([p].[Diagnosis]) - 10, [p].[Diagnosis], 'persecution', 0) = (LEN([p].[Diagnosis]) - 10) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%persecution' OR InStr(LEN([p].[Diagnosis]) - 10, [p].[Diagnosis], 'persecution', 0) <> (LEN([p].[Diagnosis]) - 10)) AND
	[p].[PersonID] = 2

