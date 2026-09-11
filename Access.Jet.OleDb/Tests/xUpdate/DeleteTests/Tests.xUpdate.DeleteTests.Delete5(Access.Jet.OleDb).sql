-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Jet.OleDb AccessOleDb
DECLARE @values Integer -- Int32
SET     @values = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values,
	1
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @values Integer -- Int32
SET     @values = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values,
	1
)

-- Access.Jet.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] IN (1001, 1002)

-- Access.Jet.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

