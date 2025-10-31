-- SqlServer.2012

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

-- SqlServer.2012

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

-- SqlServer.2012

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

-- SqlServer.2012

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

-- SqlServer.2012

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

-- SqlServer.2012

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

-- SqlServer.2012

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

-- SqlServer.2012

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

-- SqlServer.2012

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

-- SqlServer.2012

DELETE [a_GrandChildren]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
WHERE
	[p].[ParentID] >= 1000

-- SqlServer.2012

DELETE [a_Children]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
WHERE
	[p].[ParentID] >= 1000

-- SqlServer.2012

DELETE [c_1]
FROM
	[GrandChild] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- SqlServer.2012

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- SqlServer.2012

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

