﻿BeforeExecute
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
					[_2].[ParentID]
				FROM
					(
						SELECT
							[_1].[ParentID],
							[t1].[cnt] as [ex]
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
					) [_2]
				WHERE
					[_2].[ParentID] = @id AND [_2].[ex] > 0
			) [t2]
		WHERE
			[Parent].[ParentID] = [t2].[ParentID]
	)

