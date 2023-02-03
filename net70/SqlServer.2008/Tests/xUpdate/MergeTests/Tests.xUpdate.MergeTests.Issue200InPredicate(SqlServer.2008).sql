BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2008
DECLARE @datetime2DataType DateTime2
SET     @datetime2DataType = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)
DECLARE @datetimeoffsetDataType DateTimeOffset
SET     @datetimeoffsetDataType = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(CAST('2020-02-29T17:54:55.1231234' AS DATETIME2),CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
	(CAST('2020-02-29T17:54:55.1231235' AS DATETIME2),CAST('2020-02-29T17:54:55.1231235+00:40' AS DATETIMEOFFSET))
) [Source]
(
	[datetime2DataType],
	[datetimeoffsetDataType]
)
ON ([Source].[datetime2DataType] = @datetime2DataType AND
[Source].[datetimeoffsetDataType] = @datetimeoffsetDataType)

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
