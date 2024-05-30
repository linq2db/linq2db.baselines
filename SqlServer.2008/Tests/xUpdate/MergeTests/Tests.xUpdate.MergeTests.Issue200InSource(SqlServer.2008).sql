BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2008

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(1,CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET),CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)),
	(2,CAST('2020-02-29T17:54:55.1231235+00:40' AS DATETIMEOFFSET),CAST('2020-02-29T17:54:55.1231235' AS DATETIME2))
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
-- SqlServer.2008

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
