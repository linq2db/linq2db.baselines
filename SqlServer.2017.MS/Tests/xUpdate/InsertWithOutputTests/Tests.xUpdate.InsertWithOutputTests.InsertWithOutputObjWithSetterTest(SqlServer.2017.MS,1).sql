BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Value Int -- Int32
SET     @Value = 100
DECLARE @value_1 Int -- Int32
SET     @value_1 = 1
DECLARE @ValueStr NVarChar(4000) -- String
SET     @ValueStr = N'SomeStr1'

INSERT INTO [TableWithData]
(
	[Value],
	[Id],
	[ValueStr]
)
OUTPUT
	[INSERTED].[Id],
	[INSERTED].[Value],
	[INSERTED].[ValueStr]
VALUES
(
	@Value,
	@value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TableWithData]

