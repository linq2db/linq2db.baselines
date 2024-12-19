BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ConcreteA]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[ConcreteA]', N'U') IS NULL)
	CREATE TABLE [ConcreteA]
	(
		[Id]    Int            NOT NULL,
		[AOnly] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcreteA] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ConcreteB]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[ConcreteB]', N'U') IS NULL)
	CREATE TABLE [ConcreteB]
	(
		[Id]    Int            NOT NULL,
		[BOnly] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcreteB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @AOnly NVarChar(4000) -- String
SET     @AOnly = N'a only'

INSERT INTO [ConcreteA]
(
	[Id],
	[AOnly]
)
VALUES
(
	@Id,
	@AOnly
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @BOnly NVarChar(4000) -- String
SET     @BOnly = N'b only'

INSERT INTO [ConcreteB]
(
	[Id],
	[BOnly]
)
VALUES
(
	@Id,
	@BOnly
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[e].[Id],
	[e].[AOnly],
	NULL,
	NULL
FROM
	[ConcreteA] [e]
UNION ALL
SELECT
	NULL,
	NULL,
	[e_1].[Id],
	[e_1].[BOnly]
FROM
	[ConcreteB] [e_1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ConcreteB]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [ConcreteA]

