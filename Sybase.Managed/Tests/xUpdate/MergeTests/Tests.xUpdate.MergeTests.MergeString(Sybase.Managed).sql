BeforeExecute
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
	MAX([t1].[ID])
FROM
	[AllTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [AllTypes] [Target]
USING (
	SELECT 3 AS [source_ID], char(0) AS [source_charDataType], char(0) AS [source_ncharDataType], 'test' + char(0) + 'it' AS [source_nvarcharDataType]) [Source]
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
DisposeTransaction
