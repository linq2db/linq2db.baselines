BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'FluentTemp') IS NOT NULL)
	DROP TABLE [FluentTemp]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

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
-- Sybase.Managed Sybase (asynchronously)
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
	SELECT 1 AS [ID], 'John II' AS [Name]) [Source]
(
	[ID],
	[Name]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Name] = [Source].[Name]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Name]
)
VALUES
(
	[Source].[ID],
	[Source].[Name]
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'FluentTemp') IS NOT NULL)
	DROP TABLE [FluentTemp]

