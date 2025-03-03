BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Value  -- Int32
SET     @Value = 100
DECLARE @value_1  -- Int32
SET     @value_1 = 1
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
	@value_1,
	@ValueStr
)
RETURNING
	[TableWithData].[Id],
	[TableWithData].[Value],
	[TableWithData].[ValueStr]

