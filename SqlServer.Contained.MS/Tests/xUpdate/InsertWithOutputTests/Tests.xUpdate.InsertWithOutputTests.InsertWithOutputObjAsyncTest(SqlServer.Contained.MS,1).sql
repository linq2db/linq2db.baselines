BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 100
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'SomeStr1'

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

