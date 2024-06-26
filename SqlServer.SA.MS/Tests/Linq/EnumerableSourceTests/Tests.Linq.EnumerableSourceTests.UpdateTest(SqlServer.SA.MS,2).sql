﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(3,N'Janet'),
(4,N'Doe')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

UPDATE
	[u]
SET
	[u].[Value] = [r].[Value]
FROM
	[TableToInsert] [u],
	(VALUES
		(3,N'Janet Updated'), (4,N'Doe Updated')
	) [r]([Id], [Value])
WHERE
	[u].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TableToInsert]

