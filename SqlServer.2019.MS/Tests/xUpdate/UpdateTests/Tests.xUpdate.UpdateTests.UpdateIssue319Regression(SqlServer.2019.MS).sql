BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 100500

SELECT TOP (1)
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 100500
DECLARE @id Int -- Int32
SET     @id = 100500

UPDATE
	[Parent]
SET
	[Value1] = @ParentID
WHERE
	[Parent].[ParentID] = @id AND (
		SELECT
			COUNT(*)
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = @id
	) > 0

