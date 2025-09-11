BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'FluentTemp') IS NULL)
	EXECUTE('
		CREATE TABLE [FluentTemp]
		(
			[ID]       Int          NOT NULL,
			[Value]    NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp]
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

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
			[ID]       Int          NOT NULL,
			[Value]    NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp]
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

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
			[ID]       Int          NOT NULL,
			[Column]   NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp]
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

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
			[ID]       Int          NOT NULL,
			[Column]   NVarChar(20)     NULL,
			[LastName] NVarChar(20)     NULL,

			CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName UniVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp]
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'FluentTemp') IS NOT NULL)
	DROP TABLE [FluentTemp]

