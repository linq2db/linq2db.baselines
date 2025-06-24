BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 3

SELECT
	[t].[ID],
	[t].[charDataType],
	[t].[ncharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[ID] = @id

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 3

MERGE INTO [AllTypes] [Target]
USING (
	SELECT
		[t].[ID] as [source_ID],
		[t].[charDataType] as [source_charDataType],
		[t].[ncharDataType] as [source_ncharDataType]
	FROM
		[AllTypes] [t]
	WHERE
		[t].[ID] = @id
) [Source]
(
	[source_ID],
	[source_charDataType],
	[source_ncharDataType]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[charDataType] = [Source].[source_charDataType],
	[ncharDataType] = [Source].[source_ncharDataType]

WHEN NOT MATCHED THEN
INSERT
(
	[charDataType],
	[ncharDataType]
)
VALUES
(
	[Source].[source_charDataType],
	[Source].[source_ncharDataType]
)
;

BeforeExecute
DisposeTransaction
