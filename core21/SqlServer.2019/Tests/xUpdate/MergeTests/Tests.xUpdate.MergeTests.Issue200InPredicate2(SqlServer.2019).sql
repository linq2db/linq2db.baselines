BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @DateTime DateTime2
SET     @DateTime = '2020-02-29T17:54:55.1231234'
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = '2020-02-29 17:54:55.1231234 +00:40'

MERGE INTO [AllTypes2] [Target]
USING (	VALUES
		('2020-02-29T17:54:55.1231232', '2020-02-29 17:54:55.1231232 +00:40'),
		('2020-02-29T17:54:55.1231233', '2020-02-29 17:54:55.1231233 +00:40')) [Source]
(
	[datetime2DataType],
	[datetimeoffsetDataType]
)
ON ([Source].[datetime2DataType] <> @DateTime AND [Source].[datetimeoffsetDataType] <> @DateTimeOffset)

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
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

