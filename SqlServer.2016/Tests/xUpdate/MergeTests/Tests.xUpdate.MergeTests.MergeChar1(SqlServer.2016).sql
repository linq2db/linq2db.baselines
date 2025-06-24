BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2016

INSERT INTO [AllTypes]
(
	[charDataType],
	[ncharDataType]
)
VALUES
(
	char(0),
	char(0)
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 3

MERGE INTO [AllTypes] [Target]
USING (
	SELECT
		[t].[ID] as [source_ID],
		[t].[charDataType] as [source_charDataType],
		[t].[ncharDataType] as [source_ncharDataType],
		[t].[nvarcharDataType] as [source_nvarcharDataType]
	FROM
		[AllTypes] [t]
	WHERE
		[t].[ID] = @id
) [Source]
(
	[source_ID],
	[source_charDataType],
	[source_ncharDataType],
	[source_nvarcharDataType]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[charDataType] = [Source].[source_charDataType],
	[ncharDataType] = [Source].[source_ncharDataType],
	[nvarcharDataType] = [Source].[source_nvarcharDataType]

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
DisposeTransaction
