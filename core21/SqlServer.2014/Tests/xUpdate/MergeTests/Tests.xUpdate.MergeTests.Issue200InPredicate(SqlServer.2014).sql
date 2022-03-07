﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @datetime2DataType DateTime2
SET     @datetime2DataType = '2020-02-29T17:54:55.1231234'
DECLARE @datetimeoffsetDataType DateTimeOffset
SET     @datetimeoffsetDataType = '2020-02-29 17:54:55.1231234 +00:40'

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	('2020-02-29T17:54:55.1231234','2020-02-29 17:54:55.1231234 +00:40'),
	('2020-02-29T17:54:55.1231235','2020-02-29 17:54:55.1231235 +00:40')
) [Source]
(
	[datetime2DataType],
	[datetimeoffsetDataType]
)
ON ([Source].[datetime2DataType] = @datetime2DataType AND
[Source].[datetimeoffsetDataType] = @datetimeoffsetDataType)

WHEN NOT MATCHED THEN
INSERT
(
	[datetimeoffsetDataType],
	[datetime2DataType]
)
VALUES
(
	[Source].[datetimeoffsetDataType],
	[Source].[datetime2DataType]
)
;

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
RollbackTransaction
