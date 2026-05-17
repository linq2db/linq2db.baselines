-- SqlCe

CREATE TABLE [FluentTemp_Cache]
(
	[ID]       Int          NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY ([ID])
)

-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
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

-- SqlCe

SELECT
	[t].[ID],
	[t].[Value] as [Name],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SqlCe

DROP TABLE [FluentTemp_Cache]

-- SqlCe

CREATE TABLE [FluentTemp_Cache]
(
	[ID]       Int          NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY ([ID])
)

-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
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

-- SqlCe

SELECT
	[t].[ID],
	[t].[Value] as [Name],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SqlCe

DROP TABLE [FluentTemp_Cache]

-- SqlCe

CREATE TABLE [FluentTemp_Cache]
(
	[ID]       Int          NOT NULL,
	[Column]   NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY ([ID])
)

-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
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

-- SqlCe

SELECT
	[t].[ID],
	[t].[Column] as [Name],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SqlCe

DROP TABLE [FluentTemp_Cache]

-- SqlCe

CREATE TABLE [FluentTemp_Cache]
(
	[ID]       Int          NOT NULL,
	[Column]   NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY ([ID])
)

-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
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

-- SqlCe

SELECT
	[t].[ID],
	[t].[Column] as [Name],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SqlCe

DROP TABLE [FluentTemp_Cache]

