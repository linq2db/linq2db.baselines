﻿BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute AllTypes, 'identity_burn_max', 0, '2'

BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute KeepIdentityTest, 'identity_burn_max', 0, '0'

BeforeExecute
BeginTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Max([_].[ID])
FROM
	[AllTypes] [_]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [AllTypes] [Target]
USING (
	SELECT 3 AS [ID], char(0) AS [charDataType], char(0) AS [ncharDataType], 'test' + char(0) + 'it' AS [nvarcharDataType]) [Source]
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

BeforeExecute
RollbackTransaction
