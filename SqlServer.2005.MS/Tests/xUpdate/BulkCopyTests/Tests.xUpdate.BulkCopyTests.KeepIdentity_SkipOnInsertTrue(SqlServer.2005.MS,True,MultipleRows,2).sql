﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DBCC CHECKIDENT ('AllTypes', RESEED, 2)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
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
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
SELECT 13,200 UNION ALL
SELECT 23,300

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
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
-- SqlServer.2005.MS SqlServer.2005
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

