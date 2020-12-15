BeforeExecute
-- SqlServer.2008

DBCC CHECKIDENT ('AllTypes', RESEED, 2)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 3

MERGE INTO [AllTypes] [Target]
USING (
	SELECT
		[t].[ID],
		[t].[charDataType],
		[t].[ncharDataType],
		[t].[nvarcharDataType]
	FROM
		[AllTypes] [t]
	WHERE
		[t].[ID] = @id
) [Source]
(
	[ID],
	[charDataType],
	[ncharDataType],
	[nvarcharDataType]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[charDataType] = [Source].[charDataType],
	[Target].[ncharDataType] = [Source].[ncharDataType],
	[Target].[nvarcharDataType] = [Source].[nvarcharDataType]

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

