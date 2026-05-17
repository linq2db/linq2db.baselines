-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp_Cache]', N'U') IS NULL)
	CREATE TABLE [FluentTemp_Cache]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp_Cache]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_Cache]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp_Cache]', N'U') IS NULL)
	CREATE TABLE [FluentTemp_Cache]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp_Cache]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_Cache]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp_Cache]', N'U') IS NULL)
	CREATE TABLE [FluentTemp_Cache]
	(
		[ID]       Int          NOT NULL,
		[Column]   NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp_Cache]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_Cache]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp_Cache]', N'U') IS NULL)
	CREATE TABLE [FluentTemp_Cache]
	(
		[ID]       Int          NOT NULL,
		[Column]   NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp_Cache]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_Cache]

