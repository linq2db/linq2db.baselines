BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[TableWithData]', N'U') IS NULL)
	CREATE TABLE [TableWithData]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TableWithData]

