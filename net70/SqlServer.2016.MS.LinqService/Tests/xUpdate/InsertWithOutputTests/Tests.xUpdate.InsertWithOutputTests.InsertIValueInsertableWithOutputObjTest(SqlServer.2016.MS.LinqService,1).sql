﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 100
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
	[INSERTED].[Id],
	[INSERTED].[Value],
	[INSERTED].[ValueStr]
VALUES
(
	@Value_1,
	@Id,
	@ValueStr
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TableWithData]

