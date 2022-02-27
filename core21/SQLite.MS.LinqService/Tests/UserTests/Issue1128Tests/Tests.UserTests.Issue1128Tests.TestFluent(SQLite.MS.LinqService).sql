BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [AttributeBase]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_AttributeBase] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

DROP TABLE [AttributeBase]

