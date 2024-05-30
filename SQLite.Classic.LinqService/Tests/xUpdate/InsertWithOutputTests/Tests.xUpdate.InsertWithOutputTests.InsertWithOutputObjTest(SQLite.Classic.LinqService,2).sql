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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value  -- Int32
SET     @Value = 200
DECLARE @ValueStr NVarChar(8) -- String
SET     @ValueStr = 'SomeStr2'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)
RETURNING
	[TableWithData].[Id],
	[TableWithData].[Value],
	[TableWithData].[ValueStr]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

