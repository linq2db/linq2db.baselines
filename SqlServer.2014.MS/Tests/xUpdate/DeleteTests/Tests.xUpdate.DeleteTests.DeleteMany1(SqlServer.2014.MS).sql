-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

-- SqlServer.2014.MS SqlServer.2014

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

-- SqlServer.2014.MS SqlServer.2014

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

-- SqlServer.2014.MS SqlServer.2014

DELETE [a_Children]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
WHERE
	[p].[ParentID] >= 1000

-- SqlServer.2014.MS SqlServer.2014

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- SqlServer.2014.MS SqlServer.2014

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

