﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 100
DECLARE @ValueStr NVarChar(8) -- String
SET     @ValueStr = 'SomeStr1'

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

