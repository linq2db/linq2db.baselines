-- SqlServer.Contained.MS SqlServer.2019

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

-- SqlServer.Contained.MS SqlServer.2019

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

-- SqlServer.Contained.MS SqlServer.2019

UPDATE
	[a_Parent]
SET
	[a_Parent].[Value1] = 5
FROM
	[Child] [child_1]
		LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[child_1].[ChildID] = 10000

