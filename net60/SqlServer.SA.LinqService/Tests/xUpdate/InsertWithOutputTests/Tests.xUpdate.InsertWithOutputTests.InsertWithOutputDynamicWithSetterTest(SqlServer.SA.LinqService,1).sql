﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [TableWithData]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 100
DECLARE @value_2 Int -- Int32
SET     @value_2 = 1
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
	@value_2,
	@ValueStr
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TableWithData]

