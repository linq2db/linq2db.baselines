BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InheritanceFilter]

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field],
	[Child2Field],
	[Grandchild11Field],
	[Grandchild12Field],
	[Grandchild21Field],
	[Grandchild22Field]
)
VALUES
(1,1,11,0,0,0,0,0),
(2,2,0,12,0,0,0,0),
(3,11,23,0,13,0,0,0),
(4,12,24,0,0,14,0,0),
(5,21,0,25,0,0,15,0),
(6,22,0,26,0,0,0,16)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Child1Field],
	[t1].[Grandchild12Field],
	[t1].[Grandchild11Field]
FROM
	[InheritanceFilter] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InheritanceFilter]

