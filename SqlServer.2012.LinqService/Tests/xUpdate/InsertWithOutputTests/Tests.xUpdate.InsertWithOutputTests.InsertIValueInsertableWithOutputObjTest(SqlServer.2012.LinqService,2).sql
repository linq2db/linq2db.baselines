BeforeExecute
-- SqlServer.2012
DECLARE @Value Int -- Int32
SET     @Value = 200
DECLARE @Id Int -- Int32
SET     @Id = 2
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
	@Id,
	@ValueStr
)

