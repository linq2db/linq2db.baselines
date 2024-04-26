BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 1001

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

