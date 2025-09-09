BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (PagLock)

