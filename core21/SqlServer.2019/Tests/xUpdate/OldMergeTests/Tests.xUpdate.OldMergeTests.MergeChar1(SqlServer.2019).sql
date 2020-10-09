BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017
DECLARE @id_1 Int -- Int32
SET     @id_1 = 36046

SELECT
	[t].[ID],
	[t].[charDataType],
	[t].[ncharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[ID] = @id_1

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id_1 Int -- Int32
SET     @id_1 = 36046

MERGE INTO [AllTypes] [Target]
USING (
	SELECT
		[t].[ID],
		[t].[charDataType],
		[t].[ncharDataType]
	FROM
		[AllTypes] [t]
	WHERE
		[t].[ID] = @id_1
) [Source]
(
	[ID], 
	[charDataType], 
	[ncharDataType]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[charDataType] = [Source].[charDataType],
	[Target].[ncharDataType] = [Source].[ncharDataType]

WHEN NOT MATCHED THEN
INSERT
(
	[charDataType],
	[ncharDataType]
)
VALUES
(
	[Source].[charDataType],
	[Source].[ncharDataType]
)
;

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 36046

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] = @id

