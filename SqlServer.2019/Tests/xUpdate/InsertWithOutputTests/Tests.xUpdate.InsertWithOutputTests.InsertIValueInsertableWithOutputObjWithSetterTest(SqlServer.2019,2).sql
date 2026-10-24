-- SqlServer.2019
DECLARE @Value Int -- Int32
SET     @Value = 200
DECLARE @value_1 Int -- Int32
SET     @value_1 = 2
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'SomeStr2'

INSERT INTO [TableWithData]
(
	[Value],
	[Id],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
VALUES
(
	@Value,
	@value_1,
	@ValueStr
)

