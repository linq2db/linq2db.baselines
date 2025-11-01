-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Ace.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

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

-- Access.Ace.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002

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

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] IN (1001, 1002)

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

