-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[AllTypes2] [t1]

-- SqlServer.2025 SqlServer.2022
DECLARE @datetime2DataType DateTime2
SET     @datetime2DataType = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)
DECLARE @datetimeoffsetDataType DateTimeOffset
SET     @datetimeoffsetDataType = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)),
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 0, 40, 7))
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

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

