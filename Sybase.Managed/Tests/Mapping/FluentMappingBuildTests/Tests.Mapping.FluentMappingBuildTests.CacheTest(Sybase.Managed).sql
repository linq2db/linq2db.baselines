-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_Cache') IS NULL)
	EXECUTE('
		CREATE TABLE [FluentTemp_Cache]
		(
			[ID]       Int          NOT NULL,
			[Value]    NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY CLUSTERED ([ID])
		)
	')

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Cache]
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

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_Cache') IS NOT NULL)
	DROP TABLE [FluentTemp_Cache]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_Cache') IS NULL)
	EXECUTE('
		CREATE TABLE [FluentTemp_Cache]
		(
			[ID]       Int          NOT NULL,
			[Value]    NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY CLUSTERED ([ID])
		)
	')

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Cache]
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

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_Cache') IS NOT NULL)
	DROP TABLE [FluentTemp_Cache]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_Cache') IS NULL)
	EXECUTE('
		CREATE TABLE [FluentTemp_Cache]
		(
			[ID]       Int          NOT NULL,
			[Column]   NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY CLUSTERED ([ID])
		)
	')

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Cache]
(
	[ID],
	[Column],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- Sybase.Managed Sybase

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_Cache') IS NOT NULL)
	DROP TABLE [FluentTemp_Cache]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_Cache') IS NULL)
	EXECUTE('
		CREATE TABLE [FluentTemp_Cache]
		(
			[ID]       Int          NOT NULL,
			[Column]   NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY CLUSTERED ([ID])
		)
	')

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Cache]
(
	[ID],
	[Column],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- Sybase.Managed Sybase

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'FluentTemp_Cache') IS NOT NULL)
	DROP TABLE [FluentTemp_Cache]

