﻿BeforeExecute
-- SqlServer.2012

CREATE TABLE [TableWithData]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2012 (asynchronously)
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 2
DECLARE @Value_2 Int -- Int32
SET     @Value_2 = 200
DECLARE @ValueStr_1 NVarChar(50) -- String
SET     @ValueStr_1 = N'SomeStr2'

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
	@Id_1,
	@Value_2,
	@ValueStr_1
)

BeforeExecute
-- SqlServer.2012

DROP TABLE [TableWithData]

