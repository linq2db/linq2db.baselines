BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentity') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentity') IS NULL)
	EXECUTE('
		CREATE TABLE [TableWithIdentity]
		(
			[Id]    Int IDENTITY NOT NULL,
			[Value] Int          NOT NULL,

			CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [TableWithIdentity] [Target]
USING (
	SELECT 1 AS [source_Id], 2 AS [source_Value]) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[source_Value]

WHEN NOT MATCHED THEN
INSERT
(
	[Value]
)
VALUES
(
	[Source].[source_Value]
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentity') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

