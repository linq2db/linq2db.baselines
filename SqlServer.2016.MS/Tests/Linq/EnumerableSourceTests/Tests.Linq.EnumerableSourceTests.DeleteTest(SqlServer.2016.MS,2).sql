﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(3,N'Janet'),
(4,N'Doe')

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(3), (4)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TableToInsert]

