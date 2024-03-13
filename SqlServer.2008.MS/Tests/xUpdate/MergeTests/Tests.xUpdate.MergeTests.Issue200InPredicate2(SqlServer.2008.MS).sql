BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @DateTime DateTime2
SET     @DateTime = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(CAST('2020-02-29T17:54:55.1231232' AS DATETIME2),CAST('2020-02-29T17:54:55.1231232+00:40' AS DATETIMEOFFSET)),
	(CAST('2020-02-29T17:54:55.1231233' AS DATETIME2),CAST('2020-02-29T17:54:55.1231233+00:40' AS DATETIMEOFFSET))
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
