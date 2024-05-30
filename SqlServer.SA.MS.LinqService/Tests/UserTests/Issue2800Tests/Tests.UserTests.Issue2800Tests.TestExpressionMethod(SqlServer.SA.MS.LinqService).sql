BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Car]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Car]', N'U') IS NULL)
	CREATE TABLE [Car]
	(
		[Id]   Int          NOT NULL,
		[Name] NVarChar(50)     NULL,

		CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(50) -- String
SET     @Name = N'Special'

INSERT INTO [Car]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(50) -- String
SET     @Name = N'NoSpecial'

INSERT INTO [Car]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	([x].[Name] <> N'Special' OR [x].[Name] IS NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = N'Special'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	([x].[Name] <> N'Special' OR [x].[Name] IS NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = N'Special'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Car]

