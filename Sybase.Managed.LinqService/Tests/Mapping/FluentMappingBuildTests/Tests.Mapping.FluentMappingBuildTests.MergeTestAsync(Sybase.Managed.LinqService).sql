BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'FluentTemp') IS NOT NULL)
	DROP TABLE [FluentTemp]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp') IS NULL)
	EXECUTE('
		CREATE TABLE [FluentTemp]
		(
			[ID]   Int          NOT NULL,
			[Name] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

MERGE INTO [FluentTemp] [Target]
USING (
	SELECT 1 AS [source_ID], 'John II' AS [source_Name]) [Source]
(
	[source_ID],
	[source_Name]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[Name] = [Source].[source_Name]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Name]
)
VALUES
(
	[Source].[source_ID],
	[Source].[source_Name]
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'FluentTemp') IS NOT NULL)
	DROP TABLE [FluentTemp]

