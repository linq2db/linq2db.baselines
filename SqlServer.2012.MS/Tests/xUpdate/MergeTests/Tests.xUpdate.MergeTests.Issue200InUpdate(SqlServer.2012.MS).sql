-- SqlServer.2012.MS SqlServer.2012

DELETE [t1]
FROM
	[AllTypes2] [t1]

-- SqlServer.2012.MS SqlServer.2012

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(0,DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)),
	(0,DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 0, 40, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 7))
) [Source]
(
	[ID],
	[datetimeoffsetDataType],
	[datetime2DataType]
)
ON ([Target].[ID] = [Source].[ID])

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

-- SqlServer.2012.MS SqlServer.2012
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
	[datetime2DataType],
	[datetimeoffsetDataType]
)
ON (([Target].[datetime2DataType] = [Source].[datetime2DataType] OR [Target].[datetime2DataType] IS NULL AND [Source].[datetime2DataType] IS NULL) AND
([Target].[datetimeoffsetDataType] = [Source].[datetimeoffsetDataType] OR [Target].[datetimeoffsetDataType] IS NULL AND [Source].[datetimeoffsetDataType] IS NULL) AND
[Target].[datetime2DataType] = @datetime2DataType AND
[Target].[datetimeoffsetDataType] = @datetimeoffsetDataType)

WHEN MATCHED THEN
UPDATE
SET
	[datetimeoffsetDataType] = @dto2,
	[datetime2DataType] = @dt2
;

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

