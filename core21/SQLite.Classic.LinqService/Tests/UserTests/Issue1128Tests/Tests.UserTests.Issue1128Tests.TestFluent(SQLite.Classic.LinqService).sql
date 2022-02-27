BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [AttributeBase]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_AttributeBase] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [AttributeBase]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [AttributeBase]

