﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestSchema].[TableWithDataAndSchema]', N'U') IS NOT NULL)
	DROP TABLE [TestSchema].[TableWithDataAndSchema]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestSchema].[TableWithDataAndSchema]', N'U') IS NULL)
	CREATE TABLE [TestSchema].[TableWithDataAndSchema]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 200
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'SomeStr2'

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
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestSchema].[TableWithDataAndSchema]', N'U') IS NOT NULL)
	DROP TABLE [TestSchema].[TableWithDataAndSchema]

