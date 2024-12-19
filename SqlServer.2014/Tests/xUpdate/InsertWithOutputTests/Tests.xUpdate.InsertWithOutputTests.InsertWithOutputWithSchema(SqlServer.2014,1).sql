BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TestSchema].[TableWithDataAndSchema]', N'U') IS NOT NULL)
	DROP TABLE [TestSchema].[TableWithDataAndSchema]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TestSchema].[TableWithDataAndSchema]', N'U') IS NULL)
	CREATE TABLE [TestSchema].[TableWithDataAndSchema]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 100
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'SomeStr1'

INSERT INTO [TestSchema].[TableWithDataAndSchema]
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
-- SqlServer.2014

IF (OBJECT_ID(N'[TestSchema].[TableWithDataAndSchema]', N'U') IS NOT NULL)
	DROP TABLE [TestSchema].[TableWithDataAndSchema]

