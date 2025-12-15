-- SqlServer.2012

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

-- SqlServer.2012

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

-- SqlServer.2012
DECLARE @Value1 Int -- Int32
SET     @Value1 = 5

UPDATE
	[a_Parent]
SET
	[a_Parent].[Value1] = @Value1
FROM
	[Child] [child_1]
		LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[child_1].[ChildID] = 10000

