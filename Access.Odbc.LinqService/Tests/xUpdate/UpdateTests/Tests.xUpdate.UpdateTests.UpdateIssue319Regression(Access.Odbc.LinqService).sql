BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 100500
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

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
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 100500

SELECT TOP 1
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 100500
DECLARE @ParentID Int -- Int32
SET     @ParentID = 100500
DECLARE @id Int -- Int32
SET     @id = 100500

UPDATE
	[Parent] [u],
	(
		SELECT
			[p].[ParentID],
			(
				SELECT
					COUNT(*)
				FROM
					[Parent] [p_1]
				WHERE
					[p_1].[ParentID] = ?
			) as [COUNT_1]
		FROM
			[Parent] [p]
	) [t1]
SET
	[u].[Value1] = ?
WHERE
	[t1].[ParentID] = ? AND [t1].[COUNT_1] > 0 AND [u].[ParentID] = [t1].[ParentID]

