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
VALUES
(2,N'Janet'),
(3,N'Doe')

BeforeExecute
-- SqlServer.2017

UPDATE
	[t]
SET
	[t].[Value] = [r].[Value]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(2,N'Janet Updated'), (3,N'Doe Updated')
		) [r]([Id], [Value]) ON [t].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TableToInsert]

