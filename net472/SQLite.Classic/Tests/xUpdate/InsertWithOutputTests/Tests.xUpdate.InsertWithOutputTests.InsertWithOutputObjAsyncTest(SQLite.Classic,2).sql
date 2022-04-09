﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = 200
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
	@Value_1,
	@ValueStr
)
RETURNING
	[TableWithData].[Id],
	[TableWithData].[Value],
	[TableWithData].[ValueStr]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

