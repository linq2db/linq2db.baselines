BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TableToInsert]', N'U') IS NULL)
	CREATE TABLE [TableToInsert]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(2,N'Janet'),
(3,N'Doe')

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(2), (3)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableToInsert]

