﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT 3,N'Janet' UNION ALL
SELECT 4,N'Doe'

BeforeExecute
-- SqlServer.2005

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (
			SELECT 3 AS [Id]
			UNION ALL
			SELECT 4) [r] ON [t].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NOT NULL)
	DROP TABLE [TableToInsert]

