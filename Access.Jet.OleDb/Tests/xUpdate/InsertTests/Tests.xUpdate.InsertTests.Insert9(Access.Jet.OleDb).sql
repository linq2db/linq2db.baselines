-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 1000

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[p].[ParentID],
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @id

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 1000

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

