BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%Persecution' AND InStr(Len([p].[Diagnosis]) - 10, [p].[Diagnosis], 'Persecution', 0) = (Len([p].[Diagnosis]) - 10) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%Persecution' OR NOT InStr(Len([p].[Diagnosis]) - 10, [p].[Diagnosis], 'Persecution', 0) = (Len([p].[Diagnosis]) - 10)) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%persecution' AND InStr(Len([p].[Diagnosis]) - 10, [p].[Diagnosis], 'persecution', 0) = (Len([p].[Diagnosis]) - 10) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%persecution' OR NOT InStr(Len([p].[Diagnosis]) - 10, [p].[Diagnosis], 'persecution', 0) = (Len([p].[Diagnosis]) - 10)) AND
	[p].[PersonID] = 2

