﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithDataAndSchema]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableWithDataAndSchema]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 100
DECLARE @ValueStr NVarChar(8) -- String
SET     @ValueStr = 'SomeStr1'

INSERT INTO [TableWithDataAndSchema]
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
	[TableWithDataAndSchema].[Id],
	[TableWithDataAndSchema].[Value],
	[TableWithDataAndSchema].[ValueStr]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithDataAndSchema]

