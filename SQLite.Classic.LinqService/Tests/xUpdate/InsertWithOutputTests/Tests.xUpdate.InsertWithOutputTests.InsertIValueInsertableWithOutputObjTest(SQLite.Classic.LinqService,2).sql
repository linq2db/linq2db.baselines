BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [TableWithData]
(
	[Value],
	[Id],
	[ValueStr]
)
VALUES
(
	200,
	2,
	'SomeStr2'
)
RETURNING
	[TableWithData].[Id],
	[TableWithData].[Value],
	[TableWithData].[ValueStr]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

