-- SqlServer.2005.MS SqlServer.2005

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] IN (1001, 1002)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	1001
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	1002
)

-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = 1

-- SqlServer.2005.MS SqlServer.2005

DELETE [c_1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1 AND [c_1].[ChildID] IN (1001, 1002)

-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = 1

