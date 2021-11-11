BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConstructorTestTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ConstructorTestTable]
(
	[Value] NVarChar(255)     NULL,
	[Id]    INTEGER       NOT NULL,

	CONSTRAINT [PK_ConstructorTestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [ConstructorTestTable]
(
	[Value],
	[Id]
)
VALUES
('Some',1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConstructorTestTable]

