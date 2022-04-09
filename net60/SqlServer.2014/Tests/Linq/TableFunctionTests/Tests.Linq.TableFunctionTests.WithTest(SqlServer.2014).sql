BeforeExecute
-- SqlServer.2014

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[dbo].[Parent] [p] WITH (TABLOCK,UPDLOCK)

