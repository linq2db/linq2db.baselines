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
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = ?

-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

