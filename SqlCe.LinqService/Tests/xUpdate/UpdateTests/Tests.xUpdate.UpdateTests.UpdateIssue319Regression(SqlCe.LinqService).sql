BeforeExecute
-- SqlCe (asynchronously)
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
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 100500

SELECT TOP (1)
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 100500
DECLARE @id Int -- Int32
SET     @id = 100500

UPDATE
	[Parent]
SET
	[Value1] = @ParentID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p],
			(
				SELECT
					COUNT(*) as [COUNT_1]
				FROM
					[Parent] [p_1]
				WHERE
					[p_1].[ParentID] = @id
			) [t1]
		WHERE
			[p].[ParentID] = @id AND [t1].[COUNT_1] > 0 AND [Parent].[ParentID] = [p].[ParentID]
	)

