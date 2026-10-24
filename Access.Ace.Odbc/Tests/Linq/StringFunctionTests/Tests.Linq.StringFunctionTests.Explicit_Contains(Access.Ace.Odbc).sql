-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' AND InStr(1, [r].[Diagnosis], 'Paranoid', 0) >= 1

-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' AND InStr(1, [r].[Diagnosis], 'paranoid', 0) >= 1

-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%'

-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%'

