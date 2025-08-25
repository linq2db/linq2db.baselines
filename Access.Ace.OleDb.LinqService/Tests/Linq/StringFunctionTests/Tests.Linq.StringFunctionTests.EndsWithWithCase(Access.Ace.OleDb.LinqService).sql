BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%Persecution' AND InStr(Len([p].[Diagnosis]) - 10, [p].[Diagnosis], 'Persecution', 0) = (Len([p].[Diagnosis]) - 10) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%Persecution' OR InStr(Len([p].[Diagnosis]) - 10, [p].[Diagnosis], 'Persecution', 0) <> (Len([p].[Diagnosis]) - 10)) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	[p].[Diagnosis] LIKE '%persecution' AND InStr(Len([p].[Diagnosis]) - 10, [p].[Diagnosis], 'persecution', 0) = (Len([p].[Diagnosis]) - 10) AND
	[p].[PersonID] = 2

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Patient] [p]
WHERE
	([p].[Diagnosis] NOT LIKE '%persecution' OR InStr(Len([p].[Diagnosis]) - 10, [p].[Diagnosis], 'persecution', 0) <> (Len([p].[Diagnosis]) - 10)) AND
	[p].[PersonID] = 2

