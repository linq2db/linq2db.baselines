BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] = 10000

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 20000

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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

BeforeExecute
-- SqlServer.2019 SqlServer.2017

UPDATE
	[a_Parent]
SET
	[a_Parent].[Value1] = 5
FROM
	[Child] [child_1]
		LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[child_1].[ChildID] = 10000 AND [a_Parent].[ParentID] > 0

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] = 10000

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 20000

