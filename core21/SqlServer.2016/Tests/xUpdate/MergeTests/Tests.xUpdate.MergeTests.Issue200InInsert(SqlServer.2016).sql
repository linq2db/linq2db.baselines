BeforeExecute
-- SqlServer.2016 SqlServer.2012

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @datetime2DataType_2 DateTime2
SET     @datetime2DataType_2 = '2020-02-29T17:54:55.1231234'
DECLARE @datetimeoffsetDataType_2 DateTimeOffset
SET     @datetimeoffsetDataType_2 = '2020-02-29 17:54:55.1231234 +00:40'
DECLARE @dto2 DateTimeOffset
SET     @dto2 = '2020-02-29 17:54:55.1231237 +00:40'
DECLARE @dt2 DateTime2
SET     @dt2 = '2020-02-29T17:54:55.1231237'

SET IDENTITY_INSERT [AllTypes2] ON
MERGE INTO [AllTypes2] [Target]
USING (	VALUES
		('2020-02-29T17:54:55.1231234','2020-02-29 17:54:55.1231234 +00:40',1),
		('2020-02-29T17:54:55.1231235','2020-02-29 17:54:55.1231235 +00:40',2)) [Source]
(
	[datetime2DataType], 
	[datetimeoffsetDataType], 
	[ID]
)
ON ([Source].[datetime2DataType] = @datetime2DataType_2 AND [Source].[datetimeoffsetDataType] = @datetimeoffsetDataType_2)

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

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

