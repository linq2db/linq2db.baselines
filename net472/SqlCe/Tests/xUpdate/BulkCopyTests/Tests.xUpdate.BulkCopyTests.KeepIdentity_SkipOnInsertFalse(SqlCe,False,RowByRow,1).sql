BeforeExecute
-- SqlCe
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 200

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 300

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 127

SELECT
	[_].[ID],
	[_].[intDataType]
FROM
	[AllTypes] [_]
WHERE
	[_].[ID] > @lastId
ORDER BY
	[_].[ID]

BeforeExecute
-- SqlCe
DECLARE @lastId Int -- Int32
SET     @lastId = 127

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

