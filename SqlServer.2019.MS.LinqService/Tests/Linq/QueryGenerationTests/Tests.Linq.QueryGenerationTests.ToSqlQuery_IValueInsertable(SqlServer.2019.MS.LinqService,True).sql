BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TableWithIdentity]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[TableWithIdentity]', N'U') IS NULL)
	CREATE TABLE [TableWithIdentity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TableWithIdentity]

