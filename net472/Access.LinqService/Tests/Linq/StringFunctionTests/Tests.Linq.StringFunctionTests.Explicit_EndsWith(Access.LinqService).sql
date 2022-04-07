BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' AND InStr(LEN([r].[Diagnosis]) - 10, [r].[Diagnosis], 'Persecution', 0) = (LEN([r].[Diagnosis]) - 10)

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' AND InStr(LEN([r].[Diagnosis]) - 10, [r].[Diagnosis], 'persecution', 0) = (LEN([r].[Diagnosis]) - 10)

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution'

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution'

