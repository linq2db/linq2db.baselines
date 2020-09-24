BeforeExecute
-- SqlServer.2017
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
INSERT ASYNC BULK [AllTypes](ID, intDataType

BeforeExecute
-- SqlServer.2017
DECLARE @lastId Int -- Int32
SET     @lastId = 36561

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
-- SqlServer.2017
DECLARE @lastId Int -- Int32
SET     @lastId = 36561

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

