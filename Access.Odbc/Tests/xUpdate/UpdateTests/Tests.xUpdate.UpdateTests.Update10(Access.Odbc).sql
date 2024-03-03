BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
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
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	((
		SELECT
			[p].[ParentID],
			[u].[ChildID],
			[u].[ParentID] as [ParentID_1]
		FROM
			[Child] [u],
			[Parent] [p]
	) [cross_1]
		INNER JOIN [Child] [c_1] ON ([cross_1].[ParentID] = [c_1].[ParentID]))
		LEFT JOIN [Parent] [a_Parent] ON (([c_1].[ParentID] = [a_Parent].[ParentID]))
SET
	[cross_1].[ChildID] = [cross_1].[ChildID] + 1,
	[cross_1].[ParentID_1] = [cross_1].[ParentID]
WHERE
	[cross_1].[ChildID] = ? AND
	([a_Parent].[Value1] = 1) AND
	[c_1].[ParentID] = [cross_1].[ParentID_1] AND
	[c_1].[ChildID] = [cross_1].[ChildID]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1002

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

