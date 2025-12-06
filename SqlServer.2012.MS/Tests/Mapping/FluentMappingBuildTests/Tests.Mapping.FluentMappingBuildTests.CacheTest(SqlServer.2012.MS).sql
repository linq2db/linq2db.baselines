-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Column]   NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Column]   NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

