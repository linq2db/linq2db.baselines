﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	(VALUES
		(3,N'Janet'), (4,N'Doe')
	) [t1]([Id], [Value])
		LEFT JOIN [TableToInsert] [t] ON ([t].[Id] = [t1].[Id])
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SqlServer.2017

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	(VALUES
		(3,N'Janet'), (4,N'Doe')
	) [t1]([Id], [Value])
		LEFT JOIN [TableToInsert] [t] ON ([t].[Id] = [t1].[Id])
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TableToInsert]

