﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [EntityMA]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [EntityMA]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityMA] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [EntityMB]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [EntityMB]
(
	[Id]  Int NOT NULL,
	[FK]  Int     NULL,
	[FKD] Int     NULL,

	CONSTRAINT [PK_EntityMB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @FK Integer -- Int32
SET     @FK = 10
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 21
DECLARE @FK Integer -- Int32
SET     @FK = 11
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 22
DECLARE @FK Integer -- Int32
SET     @FK = 11
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 23
DECLARE @FK Integer -- Int32
SET     @FK = 19
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 24
DECLARE @FK Integer -- Int32
SET     @FK = 19
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 25
DECLARE @FK Integer -- Int32
SET     @FK = NULL
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 26
DECLARE @FK Integer -- Int32
SET     @FK = NULL
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 27
DECLARE @FK Integer -- Int32
SET     @FK = 19
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 28
DECLARE @FK Integer -- Int32
SET     @FK = 10
DECLARE @FKD Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [EntityMC]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [EntityMC]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityMC] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 30
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 31
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 32
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 33
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 34
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 35
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 36
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 37
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [EntityMD]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [EntityMD]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityMD] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 40
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 41
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 42
DECLARE @FK Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [EntityMD]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [EntityMC]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [EntityMB]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [EntityMA]

