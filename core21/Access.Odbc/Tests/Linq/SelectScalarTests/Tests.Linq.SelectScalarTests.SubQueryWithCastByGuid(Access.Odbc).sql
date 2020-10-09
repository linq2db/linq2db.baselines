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
			[r].[GuidValue]
		FROM
			[LinqDataTypes] [r]
	) IS NOT NULL

