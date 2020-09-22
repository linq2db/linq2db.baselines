BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[AllTypes2] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

MERGE INTO [AllTypes2] [Target]
USING (	VALUES
		(1,'2020-02-29 17:54:55.1231234 +00:40','2020-02-29T17:54:55.1231234'),
		(2,'2020-02-29 17:54:55.1231235 +00:40','2020-02-29T17:54:55.1231235')) [Source]
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

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[datetimeoffsetDataType],
	[t1].[datetime2DataType]
FROM
	[AllTypes2] [t1]
ORDER BY
	[t1].[ID]

