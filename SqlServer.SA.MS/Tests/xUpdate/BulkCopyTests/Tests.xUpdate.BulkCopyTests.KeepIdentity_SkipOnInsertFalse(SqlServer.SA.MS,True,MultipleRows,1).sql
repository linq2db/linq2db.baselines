BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
VALUES
(13,200),
(23,300)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @lastId Int -- Int32
SET     @lastId = 3

SELECT
	[t1].[ID],
	[t1].[intDataType]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] > @lastId
ORDER BY
	[t1].[ID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

