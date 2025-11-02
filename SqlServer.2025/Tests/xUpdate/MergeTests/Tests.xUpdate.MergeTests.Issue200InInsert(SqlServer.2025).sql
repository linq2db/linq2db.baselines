-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[AllTypes2] [t1]

-- SqlServer.2025 SqlServer.2022
DECLARE @datetime2DataType DateTime2
SET     @datetime2DataType = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)
DECLARE @datetimeoffsetDataType DateTimeOffset
SET     @datetimeoffsetDataType = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)
DECLARE @dto2 DateTimeOffset
SET     @dto2 = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231237, 0, 40, 7)
DECLARE @dt2 DateTime2
SET     @dt2 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231237, 7)

SET IDENTITY_INSERT [AllTypes2] ON
MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7),1),
	(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 7),DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 0, 40, 7),2)
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

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

