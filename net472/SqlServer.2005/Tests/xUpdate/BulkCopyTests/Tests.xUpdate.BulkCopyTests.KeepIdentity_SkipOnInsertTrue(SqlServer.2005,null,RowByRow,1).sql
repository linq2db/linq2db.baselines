BeforeExecute
-- SqlServer.2005
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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2005 (asynchronously)
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
-- SqlServer.2005 (asynchronously)
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
-- SqlServer.2005
DECLARE @lastId Int -- Int32
SET     @lastId = 36274

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
-- SqlServer.2005
DECLARE @lastId Int -- Int32
SET     @lastId = 36274

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

