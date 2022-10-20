﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 100
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'SomeStr1'

INSERT INTO [TableWithData]
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
-- SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

