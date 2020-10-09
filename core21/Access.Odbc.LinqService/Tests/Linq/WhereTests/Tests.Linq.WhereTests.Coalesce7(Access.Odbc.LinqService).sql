BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Iif([p].[ParentID] = 1, 10, 20) = 20

