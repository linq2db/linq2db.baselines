BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(0,CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET),CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)),
	(0,CAST('2020-02-29T17:54:55.1231235+00:40' AS DATETIMEOFFSET),CAST('2020-02-29T17:54:55.1231235' AS DATETIME2))
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @datetime2DataType DateTime2
SET     @datetime2DataType = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)
DECLARE @datetimeoffsetDataType DateTimeOffset
SET     @datetimeoffsetDataType = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)
DECLARE @dto2 DateTimeOffset
SET     @dto2 = CAST('2020-02-29T17:54:55.1231237+00:40' AS DATETIMEOFFSET)
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2020-02-29T17:54:55.1231237' AS DATETIME2)

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(CAST('2020-02-29T17:54:55.1231234' AS DATETIME2),CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
	(CAST('2020-02-29T17:54:55.1231235' AS DATETIME2),CAST('2020-02-29T17:54:55.1231235+00:40' AS DATETIMEOFFSET))
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
