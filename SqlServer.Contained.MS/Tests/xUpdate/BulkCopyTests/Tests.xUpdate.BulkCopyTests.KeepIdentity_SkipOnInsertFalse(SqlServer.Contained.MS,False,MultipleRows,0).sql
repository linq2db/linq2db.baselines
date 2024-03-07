﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DBCC CHECKIDENT ('AllTypes', RESEED, 2)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(200),
(300)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @lastId Int -- Int32
SET     @lastId = 3

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE [_]
FROM
	[AllTypes] [_]
WHERE
	[_].[ID] >= @lastId

