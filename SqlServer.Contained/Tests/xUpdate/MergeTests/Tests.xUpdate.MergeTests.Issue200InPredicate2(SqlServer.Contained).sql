BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @DateTime DateTime2
SET     @DateTime = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231232, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231232, 0, 40, 7)),
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231233, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231233, 0, 40, 7))
) [Source]
(
	[source_datetime2DataType],
	[source_datetimeoffsetDataType]
)
ON (([Source].[source_datetime2DataType] <> @DateTime OR [Source].[source_datetime2DataType] IS NULL) AND
([Source].[source_datetimeoffsetDataType] <> @DateTimeOffset OR [Source].[source_datetimeoffsetDataType] IS NULL))

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
-- SqlServer.Contained SqlServer.2019

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
