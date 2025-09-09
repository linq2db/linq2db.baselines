BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t] WITH (ReadUncommitted)
UNION
SELECT
	[t_1].[ParentID],
	[t_1].[ChildID]
FROM
	[Child] [t_1] WITH (ReadUncommitted)
WHERE
	[t_1].[ChildID] < 10
OPTION (RECOMPILE)

