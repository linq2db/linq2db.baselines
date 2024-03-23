BeforeExecute
-- Access AccessOleDb

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[Value1] IS NULL

