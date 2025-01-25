BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	(
		SELECT TOP 1
			IIF([r].[GuidValue] IS NOT NULL, True, False)
		FROM
			[LinqDataTypes] [r]
	) = True

