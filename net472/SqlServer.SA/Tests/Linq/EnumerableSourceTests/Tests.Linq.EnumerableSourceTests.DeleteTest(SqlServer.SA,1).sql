BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(2,N'Janet'),
(3,N'Doe')

BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(2), (3)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TableToInsert]

