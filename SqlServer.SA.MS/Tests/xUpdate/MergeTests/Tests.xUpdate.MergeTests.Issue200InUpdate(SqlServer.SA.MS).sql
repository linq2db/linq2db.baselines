BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(0,DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)),
	(0,DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 0, 40, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 7))
) [Source]
(
	[source_ID],
	[source_datetimeoffsetDataType],
	[source_datetime2DataType]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN NOT MATCHED THEN
INSERT
(
	[datetimeoffsetDataType],
	[datetime2DataType]
)
VALUES
(
	[Source].[source_datetimeoffsetDataType],
	[Source].[source_datetime2DataType]
)
;

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @datetime2DataType DateTime2
SET     @datetime2DataType = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)
DECLARE @datetimeoffsetDataType DateTimeOffset
SET     @datetimeoffsetDataType = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)
DECLARE @dto2 DateTimeOffset
SET     @dto2 = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231237, 0, 40, 7)
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231237, 7)

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)),
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 0, 40, 7))
) [Source]
(
	[source_datetime2DataType],
	[source_datetimeoffsetDataType]
)
ON (([Target].[datetime2DataType] = [Source].[source_datetime2DataType] AND [Target].[datetime2DataType] IS NOT NULL AND [Source].[source_datetime2DataType] IS NOT NULL OR [Target].[datetime2DataType] IS NULL AND [Source].[source_datetime2DataType] IS NULL) AND
([Target].[datetimeoffsetDataType] = [Source].[source_datetimeoffsetDataType] AND [Target].[datetimeoffsetDataType] IS NOT NULL AND [Source].[source_datetimeoffsetDataType] IS NOT NULL OR [Target].[datetimeoffsetDataType] IS NULL AND [Source].[source_datetimeoffsetDataType] IS NULL) AND
[Target].[datetime2DataType] = @datetime2DataType AND
[Target].[datetime2DataType] IS NOT NULL AND
[Target].[datetimeoffsetDataType] = @datetimeoffsetDataType AND
[Target].[datetimeoffsetDataType] IS NOT NULL)

WHEN MATCHED THEN
UPDATE
SET
	[datetimeoffsetDataType] = @dto2,
	[datetime2DataType] = @dt2
;

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
