BeforeExecute
-- Access AccessOleDb
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

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 100500

SELECT TOP 1
	[_].[ParentID]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 100500
DECLARE @id Integer -- Int32
SET     @id = 100500
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 100500

UPDATE
	[Parent] [_]
SET
	[_].[Value1] = @ParentID
WHERE
	[_].[ParentID] = @id AND (
		SELECT
			Count(*)
		FROM
			[Parent] [_1]
		WHERE
			[_1].[ParentID] = @id_1
	) > 0

