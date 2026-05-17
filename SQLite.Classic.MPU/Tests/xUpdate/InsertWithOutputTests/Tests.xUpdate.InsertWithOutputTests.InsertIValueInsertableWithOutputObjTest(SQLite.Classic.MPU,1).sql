-- SQLite.Classic.MPU SQLite.Classic SQLite
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

