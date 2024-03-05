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
DECLARE @id Int -- Int32
SET     @id = 100500

SELECT TOP (1)
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

UPDATE
	[Parent]
SET
	[Value1] = @ParentID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [_1]
				LEFT JOIN (
					SELECT
						Count(*) as [Count_1]
					FROM
						[Parent] [_]
					WHERE
						[_].[ParentID] = @id
				) [t1] ON 1=1
		WHERE
			[_1].[ParentID] = @id AND [t1].[Count_1] > 0 AND [Parent].[ParentID] = [_1].[ParentID]
	)

