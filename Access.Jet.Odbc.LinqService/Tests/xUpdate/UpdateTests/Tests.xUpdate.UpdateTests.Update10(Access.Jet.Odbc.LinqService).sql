BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
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
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	((
		SELECT
			[p].[ParentID],
			[c_1].[ParentID] as [ParentID_1],
			[c_1].[ChildID]
		FROM
			[Child] [c_1],
			[Parent] [p]
	) [cross_1]
		INNER JOIN [Child] [c_2] ON ([cross_1].[ParentID] = [c_2].[ParentID]))
		LEFT JOIN [Parent] [a_Parent] ON ([c_2].[ParentID] = [a_Parent].[ParentID])
SET
	[cross_1].[ChildID] = [c_2].[ChildID] + 1,
	[cross_1].[ParentID_1] = [cross_1].[ParentID]
WHERE
	[c_2].[ChildID] = ? AND
	[a_Parent].[Value1] = 1 AND
	[cross_1].[ParentID_1] = [c_2].[ParentID] AND
	[cross_1].[ChildID] = [c_2].[ChildID]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

