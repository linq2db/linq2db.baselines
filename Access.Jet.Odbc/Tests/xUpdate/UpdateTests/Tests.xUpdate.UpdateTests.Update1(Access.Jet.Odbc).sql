BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
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
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent] [p]
SET
	[p].[ParentID] = [p].[ParentID] + 1
WHERE
	[p].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID  -- Int32
SET     @ParentID = 1002

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

