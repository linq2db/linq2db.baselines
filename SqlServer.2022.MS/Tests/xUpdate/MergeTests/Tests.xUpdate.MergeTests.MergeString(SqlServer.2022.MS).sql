-- SqlServer.2022.MS SqlServer.2022

SELECT
	MAX([t1].[ID])
FROM
	[AllTypes] [t1]

-- SqlServer.2022.MS SqlServer.2022

MERGE INTO [AllTypes] [Target]
USING (VALUES
	(3,char(0),char(0),N'test' + char(0) + N'it')
) [Source]
(
	[ID],
	[charDataType],
	[ncharDataType],
	[nvarcharDataType]
)
ON ([Target].[ID] = [Source].[ID])

WHEN NOT MATCHED THEN
INSERT
(
	[charDataType],
	[ncharDataType],
	[nvarcharDataType]
)
VALUES
(
	[Source].[charDataType],
	[Source].[ncharDataType],
	[Source].[nvarcharDataType]
)
;

-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[ID],
	[t1].[charDataType],
	[t1].[ncharDataType],
	[t1].[nvarcharDataType]
FROM
	[AllTypes] [t1]
ORDER BY
	[t1].[ID] DESC

