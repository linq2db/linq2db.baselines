-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1001,
	1
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	1
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	2
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	3
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1001,
	2
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	2,
	1
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	2,
	2
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	2,
	3
)

-- SqlServer.SA.MS SqlServer.2019

DELETE [a_GrandChildren]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
WHERE
	[p].[ParentID] >= 1000

-- SqlServer.SA.MS SqlServer.2019

DELETE [a_Children]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
WHERE
	[p].[ParentID] >= 1000

-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[GrandChild] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- SqlServer.SA.MS SqlServer.2019

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

