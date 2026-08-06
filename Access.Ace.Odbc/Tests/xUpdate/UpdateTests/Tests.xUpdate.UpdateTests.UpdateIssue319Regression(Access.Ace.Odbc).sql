-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 100500

SELECT TOP 1
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 100500
DECLARE @id Int -- Int32
SET     @id = 100500
DECLARE @id Int -- Int32
SET     @id = 100500

UPDATE
	[Parent] [p]
SET
	[p].[Value1] = ?
WHERE
	[p].[ParentID] = ? AND (
		SELECT
			COUNT(*)
		FROM
			[Parent] [p_1]
		WHERE
			[p_1].[ParentID] = ?
	) > 0

