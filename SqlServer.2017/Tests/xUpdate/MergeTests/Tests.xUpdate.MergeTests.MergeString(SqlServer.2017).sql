BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2017

SELECT
	MAX([t1].[ID])
FROM
	[AllTypes] [t1]

BeforeExecute
-- SqlServer.2017

MERGE INTO [AllTypes] [Target]
USING (VALUES
	(3,char(0),char(0),N'test' + char(0) + N'it')
) [Source]
(
	[source_ID],
	[source_charDataType],
	[source_ncharDataType],
	[source_nvarcharDataType]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN NOT MATCHED THEN
INSERT
(
	[charDataType],
	[ncharDataType],
	[nvarcharDataType]
)
VALUES
(
	[Source].[source_charDataType],
	[Source].[source_ncharDataType],
	[Source].[source_nvarcharDataType]
)
;

BeforeExecute
-- SqlServer.2017
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

BeforeExecute
DisposeTransaction
