-- Access.Jet.Odbc AccessODBC
DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Jet.Odbc AccessODBC
DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Jet.Odbc AccessODBC
DECLARE @values Int -- Int32
SET     @values = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	1
)

-- Access.Jet.Odbc AccessODBC
DECLARE @values Int -- Int32
SET     @values = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	1
)

-- Access.Jet.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Jet.Odbc AccessODBC
DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] IN (1001, 1002)

-- Access.Jet.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

