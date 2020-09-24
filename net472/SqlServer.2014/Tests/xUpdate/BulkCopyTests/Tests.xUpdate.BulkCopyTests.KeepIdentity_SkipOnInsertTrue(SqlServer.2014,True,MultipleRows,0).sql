BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
VALUES
(36344,200),
(36354,300)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @lastId Int -- Int32
SET     @lastId = 36334

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
-- SqlServer.2014 SqlServer.2012
DECLARE @lastId Int -- Int32
SET     @lastId = 36334

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

