﻿BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 100
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
	@Value,
	@ValueStr
)
RETURNING
	[TableWithData].[Id],
	[TableWithData].[Value],
	[TableWithData].[ValueStr]

