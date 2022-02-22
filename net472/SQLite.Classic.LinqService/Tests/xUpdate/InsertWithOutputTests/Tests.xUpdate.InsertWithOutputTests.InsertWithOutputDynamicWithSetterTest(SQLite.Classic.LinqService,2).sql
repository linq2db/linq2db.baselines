﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1  -- Int32
SET     @Value_1 = 200
DECLARE @value_2  -- Int32
SET     @value_2 = 2
DECLARE @ValueStr NVarChar(8) -- String
SET     @ValueStr = 'SomeStr2'

INSERT INTO [TableWithData]
(
	[Value],
	[Id],
	[ValueStr]
)
VALUES
(
	@Value_1,
	@value_2,
	@ValueStr
)
RETURNING
	[TableWithData].[Id],
	[TableWithData].[Value],
	[TableWithData].[ValueStr]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

