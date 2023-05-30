﻿BeforeExecute
-- SqlServer.2016

DBCC CHECKIDENT ('AllTypes', RESEED, 2)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(200),
(300)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

