BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	(
		SELECT TOP 1
			IIF([r].[Value1] IS NOT NULL, True, False)
		FROM
			[Parent] [r]
	) = True

