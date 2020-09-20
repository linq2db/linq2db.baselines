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
-- SqlServer.2014 SqlServer.2012 (asynchronously)

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
VALUES
(36189,200),
(36199,300)

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @lastId Int -- Int32
SET     @lastId = 36179

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
SET     @lastId = 36179

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

