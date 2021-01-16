BeforeExecute
-- SqlServer.2005

DBCC CHECKIDENT ('AllTypes', RESEED, 2)

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
-- SqlServer.2005

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlServer.2005

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
SELECT 13,200 UNION ALL
SELECT 23,300

BeforeExecute
-- SqlServer.2005

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlServer.2005
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

