BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[dbo].[Parent] [p] WITH (TABLOCK,UPDLOCK)

