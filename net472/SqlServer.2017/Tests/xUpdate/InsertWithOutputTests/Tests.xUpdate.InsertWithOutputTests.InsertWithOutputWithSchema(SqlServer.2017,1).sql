BeforeExecute
-- SqlServer.2017

CREATE TABLE [TestSchema].[TableWithDataAndSchema]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 1
DECLARE @Value_2 Int -- Int32
SET     @Value_2 = 100
DECLARE @ValueStr_1 NVarChar(50) -- String
SET     @ValueStr_1 = N'SomeStr1'

INSERT INTO [TestSchema].[TableWithDataAndSchema]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	[INSERTED].[Id], 
	[INSERTED].[Value], 
	[INSERTED].[ValueStr]
VALUES
(
	@Id_1,
	@Value_2,
	@ValueStr_1
)

BeforeExecute
-- SqlServer.2017

DROP TABLE [TestSchema].[TableWithDataAndSchema]

