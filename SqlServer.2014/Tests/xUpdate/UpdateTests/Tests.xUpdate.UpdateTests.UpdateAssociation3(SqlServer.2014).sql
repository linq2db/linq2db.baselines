-- SqlServer.2014

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	20000,
	20000
)

-- SqlServer.2014

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

-- SqlServer.2014

UPDATE
	[a_Parent]
SET
	[a_Parent].[Value1] = 5
FROM
	[Child] [child_1]
		INNER JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[child_1].[ChildID] = 10000 AND [a_Parent].[ParentID] > 0

