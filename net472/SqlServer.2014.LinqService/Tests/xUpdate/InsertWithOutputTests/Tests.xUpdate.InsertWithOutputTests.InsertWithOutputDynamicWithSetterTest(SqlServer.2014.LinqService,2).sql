﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [TableWithData]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 200
DECLARE @value_2 Int -- Int32
SET     @value_2 = 2
DECLARE @ValueStr NVarChar(50) -- String
SET     @ValueStr = N'SomeStr2'

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
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

