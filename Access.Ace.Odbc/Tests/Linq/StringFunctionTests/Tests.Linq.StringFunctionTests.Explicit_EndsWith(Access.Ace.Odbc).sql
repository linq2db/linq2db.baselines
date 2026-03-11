-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' AND InStr(Len([r].[Diagnosis]) - 10, [r].[Diagnosis], 'Persecution', 0) = (Len([r].[Diagnosis]) - 10)

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' AND InStr(Len([r].[Diagnosis]) - 10, [r].[Diagnosis], 'persecution', 0) = (Len([r].[Diagnosis]) - 10)

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution'

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution'

