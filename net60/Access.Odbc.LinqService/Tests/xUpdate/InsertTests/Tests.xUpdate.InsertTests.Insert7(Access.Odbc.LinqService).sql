BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

