BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityA') IS NOT NULL)
	DROP TABLE [EntityA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityA') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityA]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityA] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 14
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 15
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 16
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 17
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 18
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityB') IS NOT NULL)
	DROP TABLE [EntityB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityB') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityB]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityB] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 21
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 22
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 23
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 24
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 25
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 26
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 27
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 28
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityC') IS NOT NULL)
	DROP TABLE [EntityC]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityC') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityC]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityC] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 30
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 31
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 32
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 33
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 34
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityD') IS NOT NULL)
	DROP TABLE [EntityD]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityD') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityD]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityD] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 40
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 41
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 42
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 43
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 44
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 45
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 46
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 47
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 48
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 401
DECLARE @FK Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT
	[e].[Id],
	[a_ObjectBOptional].[Id],
	[a_ObjectBOptional].[Id],
	CASE
		WHEN [a_ObjectBOptional].[Id] IS NOT NULL AND [a_ObjectC].[Id] IS NOT NULL
			THEN 1
		ELSE 0
	END,
	[a_ObjectC].[Id],
	[a_ObjectC].[FK]
FROM
	[EntityA] [e]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [e].[FK] = [a_ObjectBOptional].[Id]
		LEFT JOIN [EntityC] [a_ObjectC] ON [a_ObjectBOptional].[FK] = [a_ObjectC].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityD') IS NOT NULL)
	DROP TABLE [EntityD]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityC') IS NOT NULL)
	DROP TABLE [EntityC]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityB') IS NOT NULL)
	DROP TABLE [EntityB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityA') IS NOT NULL)
	DROP TABLE [EntityA]

