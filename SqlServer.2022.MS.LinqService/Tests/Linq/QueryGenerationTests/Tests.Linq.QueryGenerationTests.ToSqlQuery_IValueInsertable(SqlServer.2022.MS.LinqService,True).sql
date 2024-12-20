BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableWithIdentity]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NULL)
	CREATE TABLE [TableWithIdentity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableWithIdentity]

