BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityA]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[EntityA]', N'U') IS NULL)
	CREATE TABLE [EntityA]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityA] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @FK Int -- Int32
SET     @FK = 20

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @FK Int -- Int32
SET     @FK = 21

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @FK Int -- Int32
SET     @FK = 22

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 13
DECLARE @FK Int -- Int32
SET     @FK = 20

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 14
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 15
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 16
DECLARE @FK Int -- Int32
SET     @FK = 25

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 17
DECLARE @FK Int -- Int32
SET     @FK = 26

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 18
DECLARE @FK Int -- Int32
SET     @FK = 29

INSERT INTO [EntityA]
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
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityB]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[EntityB]', N'U') IS NULL)
	CREATE TABLE [EntityB]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @FK Int -- Int32
SET     @FK = 30

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 21
DECLARE @FK Int -- Int32
SET     @FK = 31

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 22
DECLARE @FK Int -- Int32
SET     @FK = 30

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 23
DECLARE @FK Int -- Int32
SET     @FK = 31

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 24
DECLARE @FK Int -- Int32
SET     @FK = 31

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 25
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 26
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 27
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 28
DECLARE @FK Int -- Int32
SET     @FK = 39

INSERT INTO [EntityB]
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
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityC]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[EntityC]', N'U') IS NULL)
	CREATE TABLE [EntityC]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityC] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 30
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityC]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 31
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityC]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 32
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityC]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 33
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityC]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 34
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityC]
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
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityD]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[EntityD]', N'U') IS NULL)
	CREATE TABLE [EntityD]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL,

		CONSTRAINT [PK_EntityD] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 40
DECLARE @FK Int -- Int32
SET     @FK = 20

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 41
DECLARE @FK Int -- Int32
SET     @FK = 21

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 42
DECLARE @FK Int -- Int32
SET     @FK = 21

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 43
DECLARE @FK Int -- Int32
SET     @FK = 21

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 44
DECLARE @FK Int -- Int32
SET     @FK = 25

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 45
DECLARE @FK Int -- Int32
SET     @FK = 26

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 46
DECLARE @FK Int -- Int32
SET     @FK = 26

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 47
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 48
DECLARE @FK Int -- Int32
SET     @FK = NULL

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 401
DECLARE @FK Int -- Int32
SET     @FK = 29

INSERT INTO [EntityD]
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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectBOptional].[Id]
		FROM
			[EntityA] [t1]
				LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK] OR [m_1].[Id] IS NULL AND [d].[FK] IS NULL

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectBOptional].[Id],
	[a_ObjectBOptional].[FK],
	[a_ObjectBOptional].[Id]
FROM
	[EntityA] [t1]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityD]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityC]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityB]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [EntityA]

