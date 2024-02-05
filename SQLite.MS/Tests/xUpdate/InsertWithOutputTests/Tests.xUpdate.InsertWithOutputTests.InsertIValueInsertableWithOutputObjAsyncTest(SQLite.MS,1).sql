﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Value  -- Int32
SET     @Value = 100
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ValueStr NVarChar(8) -- String
SET     @ValueStr = 'SomeStr1'

INSERT INTO [TableWithData]
(
	[Value],
	[Id],
	[ValueStr]
)
VALUES
(
	@Value,
	@Id,
	@ValueStr
)
RETURNING
	[TableWithData].[Id],
	[TableWithData].[Value],
	[TableWithData].[ValueStr]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableWithData]

