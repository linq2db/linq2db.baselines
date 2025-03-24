﻿BeforeExecute
BeginTransaction
BeforeExecute
--  SqlServer.2012

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
--  SqlServer.2012
DECLARE @datetime2DataType DateTime2
SET     @datetime2DataType = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)
DECLARE @datetimeoffsetDataType DateTimeOffset
SET     @datetimeoffsetDataType = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)
DECLARE @dto2 DateTimeOffset
SET     @dto2 = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231237, 0, 40, 7)
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231237, 7)

SET IDENTITY_INSERT [AllTypes2] ON
MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7),1),
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 0, 40, 7),2)
) [Source]
(
	[source_datetime2DataType],
	[source_datetimeoffsetDataType],
	[source_ID]
)
ON ([Source].[source_datetime2DataType] = @datetime2DataType AND
[Source].[source_datetimeoffsetDataType] = @datetimeoffsetDataType)

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[datetimeoffsetDataType],
	[datetime2DataType]
)
VALUES
(
	[Source].[source_ID],
	@dto2,
	@dt2
)
;
SET IDENTITY_INSERT [AllTypes2] OFF

BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
DisposeTransaction
