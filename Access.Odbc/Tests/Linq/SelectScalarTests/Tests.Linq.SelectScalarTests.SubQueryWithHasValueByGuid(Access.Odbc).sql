BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT TOP 1
			IIF([r].[GuidValue] IS NOT NULL, True, False)
		FROM
			[LinqDataTypes] [r]
	) = True

