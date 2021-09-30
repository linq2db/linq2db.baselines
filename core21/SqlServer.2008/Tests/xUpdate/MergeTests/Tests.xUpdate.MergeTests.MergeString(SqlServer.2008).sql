BeforeExecute
-- SqlServer.2008

DBCC CHECKIDENT ('AllTypes', RESEED, 2)

BeforeExecute
-- SqlServer.2008

SELECT
	Max([_].[ID])
FROM
	[AllTypes] [_]

BeforeExecute
-- SqlServer.2008

MERGE INTO [AllTypes] [Target]
USING (	VALUES
		(3, char(0), char(0), N'test' + char(0) + N'it')) [Source]
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

BeforeExecute
-- SqlServer.2008
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

