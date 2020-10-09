BeforeExecute
-- SqlServer.2008

CREATE TABLE [TableWithData]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @Value_2 Int -- Int32
SET     @Value_2 = 200
DECLARE @value_3 Int -- Int32
SET     @value_3 = 2
DECLARE @ValueStr_1 NVarChar(50) -- String
SET     @ValueStr_1 = N'SomeStr2'

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
	@Value_2,
	@value_3,
	@ValueStr_1
)

BeforeExecute
-- SqlServer.2008

DROP TABLE [TableWithData]

