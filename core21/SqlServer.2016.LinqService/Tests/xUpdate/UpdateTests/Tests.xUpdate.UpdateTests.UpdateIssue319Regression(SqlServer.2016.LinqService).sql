BeforeExecute
-- SqlServer.2016 SqlServer.2012
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
-- SqlServer.2016 SqlServer.2012
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
-- SqlServer.2016 SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 100500
DECLARE @id Int -- Int32
SET     @id = 100500

UPDATE
	[_2]
SET
	[_2].[Value1] = @ParentID
FROM
	( 
		SELECT 
			[_1].[ParentID], 
			(
				SELECT 
					Count(*)
				FROM
					[Parent] [_]
				WHERE
					[_].[ParentID] = @id
			) as [ex], 
			[_1].[Value1]
		FROM
			[Parent] [_1]
	) [_2]
WHERE
	[_2].[ParentID] = @id AND [_2].[ex] > 0

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 100500

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @id

