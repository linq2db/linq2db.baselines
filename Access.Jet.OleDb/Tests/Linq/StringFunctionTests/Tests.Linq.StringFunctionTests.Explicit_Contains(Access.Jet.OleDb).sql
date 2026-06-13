-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' AND InStr(1, [r].[Diagnosis], 'Paranoid', 0) >= 1

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' AND InStr(1, [r].[Diagnosis], 'paranoid', 0) >= 1

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%'

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%'

