BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	Max([_].[ID])
FROM
	[AllTypes] [_]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [AllTypes] [Target]
USING (	SELECT 3,char(0),char(0),'test' + char(0) + 'it') [Source]
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[t1].[ID], 
	[t1].[charDataType], 
	[t1].[ncharDataType], 
	[t1].[nvarcharDataType]
FROM
	[AllTypes] [t1]
ORDER BY
	[t1].[ID] DESC

