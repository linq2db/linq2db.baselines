-- SqlServer.2008

INSERT INTO [Parent]
(
	[ParentID]
)
SELECT DISTINCT
	[c_1].[ChildID]
FROM
	[Child] [c_1] WITH (INDEX(IX_ChildIndex))
		INNER JOIN [GrandChild] [id] ON [c_1].[ParentID] = [id].[ParentID]
WHERE
	[id].[ChildID] IS NULL

