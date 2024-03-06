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
	[_].[ParentID]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 100500
DECLARE @id Int -- Int32
SET     @id = 100500
DECLARE @id Int -- Int32
SET     @id = 100500

UPDATE
	[Parent] [_]
SET
	[_].[Value1] = ?
WHERE
	[_].[ParentID] = ? AND (
		SELECT
			Count(*)
		FROM
			[Parent] [_1]
		WHERE
			[_1].[ParentID] = ?
	) > 0

