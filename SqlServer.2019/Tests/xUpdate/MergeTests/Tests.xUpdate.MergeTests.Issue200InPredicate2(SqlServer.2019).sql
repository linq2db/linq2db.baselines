BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2019

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2019

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231232, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231232, 0, 40, 7)),
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231233, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231233, 0, 40, 7))
) [Source]
(
	[datetime2DataType],
	[datetimeoffsetDataType]
)
ON (([Source].[datetime2DataType] <> DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7) OR [Source].[datetime2DataType] IS NULL) AND
([Source].[datetimeoffsetDataType] <> DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7) OR [Source].[datetimeoffsetDataType] IS NULL))

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
-- SqlServer.2019

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
