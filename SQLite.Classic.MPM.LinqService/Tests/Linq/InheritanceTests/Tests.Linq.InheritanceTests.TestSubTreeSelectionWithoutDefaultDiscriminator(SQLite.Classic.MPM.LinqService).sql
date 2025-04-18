﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InheritanceFilter]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InheritanceFilter]
(
	[Id]                INTEGER NOT NULL,
	[Code]              INTEGER NOT NULL,
	[Child1Field]       INTEGER     NULL,
	[Child2Field]       INTEGER     NULL,
	[Grandchild11Field] INTEGER     NULL,
	[Grandchild12Field] INTEGER     NULL,
	[Grandchild21Field] INTEGER     NULL,
	[Grandchild22Field] INTEGER     NULL,

	CONSTRAINT [PK_InheritanceFilter] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code  -- Int32
SET     @Code = 1
DECLARE @Child1Field  -- Int32
SET     @Child1Field = 11

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field]
)
VALUES
(
	@Id,
	@Code,
	@Child1Field
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Code  -- Int32
SET     @Code = 2
DECLARE @Child2Field  -- Int32
SET     @Child2Field = 12

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child2Field]
)
VALUES
(
	@Id,
	@Code,
	@Child2Field
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Code  -- Int32
SET     @Code = 11
DECLARE @Child1Field  -- Int32
SET     @Child1Field = 23
DECLARE @Grandchild11Field  -- Int32
SET     @Grandchild11Field = 13

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field],
	[Grandchild11Field]
)
VALUES
(
	@Id,
	@Code,
	@Child1Field,
	@Grandchild11Field
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Code  -- Int32
SET     @Code = 12
DECLARE @Child1Field  -- Int32
SET     @Child1Field = 24
DECLARE @Grandchild12Field  -- Int32
SET     @Grandchild12Field = 14

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field],
	[Grandchild12Field]
)
VALUES
(
	@Id,
	@Code,
	@Child1Field,
	@Grandchild12Field
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Code  -- Int32
SET     @Code = 21
DECLARE @Child2Field  -- Int32
SET     @Child2Field = 25
DECLARE @Grandchild21Field  -- Int32
SET     @Grandchild21Field = 15

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child2Field],
	[Grandchild21Field]
)
VALUES
(
	@Id,
	@Code,
	@Child2Field,
	@Grandchild21Field
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Code  -- Int32
SET     @Code = 22
DECLARE @Child2Field  -- Int32
SET     @Child2Field = 26
DECLARE @Grandchild22Field  -- Int32
SET     @Grandchild22Field = 16

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child2Field],
	[Grandchild22Field]
)
VALUES
(
	@Id,
	@Code,
	@Child2Field,
	@Grandchild22Field
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Child1Field],
	[t1].[Grandchild12Field],
	[t1].[Grandchild11Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (11, 12, 1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InheritanceFilter]

