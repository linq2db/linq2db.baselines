BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityMA]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[EntityMA]', N'U') IS NULL)
	CREATE TABLE [EntityMA]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMA] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 13
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[EntityMB]', N'U') IS NULL)
	CREATE TABLE [EntityMB]
	(
		[Id]  Int NOT NULL,
		[FK]  Int     NULL,
		[FKD] Int     NULL,

		CONSTRAINT [PK_EntityMB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @FK Int -- Int32
SET     @FK = 10
DECLARE @FKD Int -- Int32
SET     @FKD = 40

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 21
DECLARE @FK Int -- Int32
SET     @FK = 11
DECLARE @FKD Int -- Int32
SET     @FKD = NULL

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 22
DECLARE @FK Int -- Int32
SET     @FK = 11
DECLARE @FKD Int -- Int32
SET     @FKD = 40

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 23
DECLARE @FK Int -- Int32
SET     @FK = 19
DECLARE @FKD Int -- Int32
SET     @FKD = 49

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 24
DECLARE @FK Int -- Int32
SET     @FK = 19
DECLARE @FKD Int -- Int32
SET     @FKD = NULL

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 25
DECLARE @FK Int -- Int32
SET     @FK = NULL
DECLARE @FKD Int -- Int32
SET     @FKD = 49

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 26
DECLARE @FK Int -- Int32
SET     @FK = NULL
DECLARE @FKD Int -- Int32
SET     @FKD = 40

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 27
DECLARE @FK Int -- Int32
SET     @FK = 19
DECLARE @FKD Int -- Int32
SET     @FKD = 41

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 28
DECLARE @FK Int -- Int32
SET     @FK = 10
DECLARE @FKD Int -- Int32
SET     @FKD = NULL

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(
	@Id,
	@FK,
	@FKD
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[EntityMC]', N'U') IS NULL)
	CREATE TABLE [EntityMC]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMC] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 30
DECLARE @FK Int -- Int32
SET     @FK = 20

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 31
DECLARE @FK Int -- Int32
SET     @FK = 24

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 32
DECLARE @FK Int -- Int32
SET     @FK = 21

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 33
DECLARE @FK Int -- Int32
SET     @FK = 21

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 34
DECLARE @FK Int -- Int32
SET     @FK = 23

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 35
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 36
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 37
DECLARE @FK Int -- Int32
SET     @FK = 29

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[EntityMD]', N'U') IS NULL)
	CREATE TABLE [EntityMD]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityMD] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 40
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 41
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 42
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
VALUES
(
	@Id,
	@FK
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[FK]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[EntityMA] [t1]
			) [t2]
				INNER JOIN [EntityMB] [d] ON [t2].[Id] = [d].[FK]
	) [m_1]
		INNER JOIN [EntityMC] [d_1] ON [m_1].[Id] = [d_1].[FK]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK],
	[d].[FKD]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[FK]
FROM
	[EntityMA] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityMA]

