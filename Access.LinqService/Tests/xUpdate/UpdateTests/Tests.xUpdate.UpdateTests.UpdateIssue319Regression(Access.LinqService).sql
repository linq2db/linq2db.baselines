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
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 100500
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 100500
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 100500

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
					[p_1].[ParentID] = @id
			) as [COUNT_1]
		FROM
			[Parent] [p]
	) [t1]
SET
	[u].[Value1] = @ParentID
WHERE
	[t1].[ParentID] = @id_1 AND [t1].[COUNT_1] > 0 AND
	[u].[ParentID] = [t1].[ParentID]

