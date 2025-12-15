-- SqlServer.2014.MS SqlServer.2014

DELETE [t1]
FROM
	[AllTypes2] [t1]

-- SqlServer.2014.MS SqlServer.2014

MERGE INTO [AllTypes2] [Target]
USING (VALUES
	(1,DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)),
	(2,DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 0, 40, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 7))
) [Source]
(
	[ID],
	[datetimeoffsetDataType],
	[datetime2DataType]
)
ON ([Target].[ID] = [Source].[ID])

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

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

