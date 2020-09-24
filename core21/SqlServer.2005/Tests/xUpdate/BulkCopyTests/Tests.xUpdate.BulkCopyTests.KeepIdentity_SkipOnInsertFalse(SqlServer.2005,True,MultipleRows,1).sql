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

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlServer.2005 (asynchronously)

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
SELECT 36222,200 UNION ALL
SELECT 36232,300

BeforeExecute
-- SqlServer.2005 (asynchronously)

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlServer.2005
DECLARE @lastId Int -- Int32
SET     @lastId = 36212

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
SET     @lastId = 36212

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

