BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DELETE [c_2]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		INNER JOIN [GrandChild] [c_2] ON [c_1].[ParentID] = [c_2].[ParentID] AND [c_1].[ChildID] = [c_2].[ChildID]
WHERE
	[p].[ParentID] >= 1000

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DELETE [c_1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] >= 1000

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DELETE [t1]
FROM
	[GrandChild] [t1]
WHERE
	[t1].[ParentID] >= 1000

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ParentID] >= 1000

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

