-- SqlServer.2022

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	20000
)

-- SqlServer.2022

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

-- SqlServer.2022

UPDATE
	[a_Parent]
SET
	[a_Parent].[Value1] = 5
FROM
	[Child] [child_1]
		LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[child_1].[ChildID] = 10000

-- SqlServer.2022

DELETE [x]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] = 10000

-- SqlServer.2022

DELETE [x]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 20000

