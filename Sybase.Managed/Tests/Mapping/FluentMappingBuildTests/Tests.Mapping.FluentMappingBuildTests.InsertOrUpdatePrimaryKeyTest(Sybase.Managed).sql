-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_InsertOrUpdate') IS NOT NULL)
	DROP TABLE [FluentTemp_InsertOrUpdate]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_InsertOrUpdate') IS NULL)
	EXECUTE('
		CREATE TABLE [FluentTemp_InsertOrUpdate]
		(
			[ID]   Int          NOT NULL,
			[Name] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp_InsertOrUpdate] PRIMARY KEY CLUSTERED ([ID])
		)
	')

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp_InsertOrUpdate]
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
	[FluentTemp_InsertOrUpdate]
SET
	[ID] = [t1].[ID],
	[Name] = [t1].[Name]
FROM
	[FluentTemp_InsertOrUpdate] [t1]
WHERE
	[t1].[ID] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [FluentTemp_InsertOrUpdate]
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

IF (OBJECT_ID(N'FluentTemp_InsertOrUpdate') IS NOT NULL)
	DROP TABLE [FluentTemp_InsertOrUpdate]

