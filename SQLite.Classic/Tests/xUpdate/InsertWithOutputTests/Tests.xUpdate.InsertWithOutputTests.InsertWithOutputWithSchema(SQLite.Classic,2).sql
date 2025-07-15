BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value  -- Int32
SET     @Value = 200
DECLARE @ValueStr NVarChar(8) -- String
SET     @ValueStr = 'SomeStr2'

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

