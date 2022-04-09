BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] = 10000

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 20000

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 5

UPDATE
	[Parent] [t1]
		INNER JOIN [Child] [a_Parent] ON ([a_Parent].[ParentID] = [t1].[ParentID])
SET
	[t1].[Value1] = @Value1
WHERE
	[a_Parent].[ChildID] = 10000

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] = 10000

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 20000

