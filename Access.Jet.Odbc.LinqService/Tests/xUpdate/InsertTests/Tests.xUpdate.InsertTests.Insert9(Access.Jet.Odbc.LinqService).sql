BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
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
	[p].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

