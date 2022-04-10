﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [TableToInsert]
(
	[Id]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(SELECT NULL[Id], NULL[Value] WHERE 1 = 0) [r]([Id], [Value])
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TableToInsert]

