﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [TableWithData]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NOT NULL)
	DROP TABLE [TableWithData]

