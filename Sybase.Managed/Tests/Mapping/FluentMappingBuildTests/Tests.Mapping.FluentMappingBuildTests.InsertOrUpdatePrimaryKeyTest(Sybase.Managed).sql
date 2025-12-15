-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp') IS NOT NULL)
	DROP TABLE [FluentTemp]

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

-- Sybase.Managed Sybase

UPDATE
	[FluentTemp]
SET
	[ID] = [t1].[ID],
	[Name] = [t1].[Name]
FROM
	[FluentTemp] [t1]
WHERE
	[t1].[ID] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [FluentTemp]
	(
		[ID],
		[Name]
	)
	VALUES
	(
		1,
		'John II'
	)
END

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp') IS NOT NULL)
	DROP TABLE [FluentTemp]

