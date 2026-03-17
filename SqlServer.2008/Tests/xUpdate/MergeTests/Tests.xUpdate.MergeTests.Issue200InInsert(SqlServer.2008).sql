-- SqlServer.2008

DELETE [t1]
FROM
	[AllTypes2] [t1]

-- SqlServer.2008
DECLARE @datetime2DataType DateTime2
SET     @datetime2DataType = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)
DECLARE @datetimeoffsetDataType DateTimeOffset
SET     @datetimeoffsetDataType = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)
DECLARE @dto2 DateTimeOffset
SET     @dto2 = CAST('2020-02-29T17:54:55.1231237+00:40' AS DATETIMEOFFSET)
DECLARE @dt2 DateTime2
SET     @dt2 = CAST('2020-02-29T17:54:55.1231237' AS DATETIME2)

SET IDENTITY_INSERT [AllTypes2] ON
MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(CAST('2020-02-29T17:54:55.1231234' AS DATETIME2),CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET),1),
	(CAST('2020-02-29T17:54:55.1231235' AS DATETIME2),CAST('2020-02-29T17:54:55.1231235+00:40' AS DATETIMEOFFSET),2)
) [Source]
(
	[datetime2DataType],
	[datetimeoffsetDataType],
	[ID]
)
ON ([Source].[datetime2DataType] = @datetime2DataType AND
[Source].[datetimeoffsetDataType] = @datetimeoffsetDataType)

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[datetimeoffsetDataType],
	[datetime2DataType]
)
VALUES
(
	[Source].[ID],
	@dto2,
	@dt2
)
;
SET IDENTITY_INSERT [AllTypes2] OFF

-- SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

