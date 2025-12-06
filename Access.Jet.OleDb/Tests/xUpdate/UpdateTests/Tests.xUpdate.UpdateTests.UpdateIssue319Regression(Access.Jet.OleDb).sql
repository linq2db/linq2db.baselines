-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 100500
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 100500

SELECT TOP 1
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 100500
DECLARE @id Integer -- Int32
SET     @id = 100500
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 100500

UPDATE
	[Parent] [p]
SET
	[p].[Value1] = @ParentID
WHERE
	[p].[ParentID] = @id AND (
		SELECT
			COUNT(*)
		FROM
			[Parent] [p_1]
		WHERE
			[p_1].[ParentID] = @id_1
	) > 0

