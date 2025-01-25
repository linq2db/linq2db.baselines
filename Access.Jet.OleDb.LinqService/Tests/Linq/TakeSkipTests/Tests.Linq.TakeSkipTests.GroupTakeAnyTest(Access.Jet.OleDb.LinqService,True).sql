BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	COUNT(*) > 0
FROM
	[TakeSkipClass] [item_1]
GROUP BY
	[item_1].[Value]
HAVING
	COUNT(*) > 1

