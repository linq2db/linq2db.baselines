BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @id Int -- Int32
SET     @id = 100500

SELECT TOP (@take)
	[_].[ParentID]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = @id

BeforeExecute
-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 100500
DECLARE @id Int -- Int32
SET     @id = 100500
DECLARE @id_1 Int -- Int32
SET     @id_1 = 100500

UPDATE
	[Parent]
SET
	[Parent].[Value1] = @ParentID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[_1].[ParentID]
				FROM
					[Parent] [_1]
						LEFT JOIN (
							SELECT
								Count(*) as [cnt]
							FROM
								[Parent] [_]
							WHERE
								[_].[ParentID] = @id
						) [t1] ON 1=1
				WHERE
					[_1].[ParentID] = @id_1 AND [t1].[cnt] > 0
			) [t2]
		WHERE
			[Parent].[ParentID] = [t2].[ParentID]
	)

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 100500

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @id

