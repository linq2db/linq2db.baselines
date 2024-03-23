BeforeExecute
-- Access AccessOleDb

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT TOP 1
			IIF([r].[Value1] IS NOT NULL, True, False)
		FROM
			[Parent] [r]
	) = True

