BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 100
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'SomeStr1'

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

