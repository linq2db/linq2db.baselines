-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_UpdateAsync') IS NULL)
	EXECUTE('
		CREATE TABLE [FluentTemp_UpdateAsync]
		(
			[ID]       Int          NOT NULL,
			[Value]    NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp_UpdateAsync] PRIMARY KEY CLUSTERED ([ID])
		)
	')

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_UpdateAsync]
(
	[ID],
	[Value],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	[FluentTemp_UpdateAsync]
SET
	[Value] = @Name,
	[LastName] = @LastName
WHERE
	[FluentTemp_UpdateAsync].[ID] = 1

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_UpdateAsync') IS NOT NULL)
	DROP TABLE [FluentTemp_UpdateAsync]

