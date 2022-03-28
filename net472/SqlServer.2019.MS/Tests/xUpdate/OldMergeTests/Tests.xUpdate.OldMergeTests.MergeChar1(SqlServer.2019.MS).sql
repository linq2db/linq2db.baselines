﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DBCC CHECKIDENT ('AllTypes', RESEED, 2)

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
		[t].[ID],
		[t].[charDataType],
		[t].[ncharDataType]
	FROM
		[AllTypes] [t]
	WHERE
		[t].[ID] = @id
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
RollbackTransaction
