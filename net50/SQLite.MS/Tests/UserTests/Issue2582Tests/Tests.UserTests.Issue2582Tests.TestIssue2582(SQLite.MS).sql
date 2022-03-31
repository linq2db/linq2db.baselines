BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TB_Issue2582Class1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TB_Issue2582Class1]
(
	[Id]     INTEGER       NOT NULL,
	[Value]  NVarChar(255)     NULL,
	[Value2] NVarChar(255)     NULL,

	CONSTRAINT [PK_TB_Issue2582Class1] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TB_Issue2582Class1]
(
	[Id],
	[Value],
	[Value2]
)
VALUES
(1,'Hello World',NULL)

BeforeExecute
-- SQLite.MS SQLite

select * from TB_Issue2582Class1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TB_Issue2582Class1]

