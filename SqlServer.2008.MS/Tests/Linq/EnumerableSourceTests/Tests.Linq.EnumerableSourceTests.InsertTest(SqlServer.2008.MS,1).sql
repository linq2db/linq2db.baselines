﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
		(2,2,N'Janet'), (3,3,N'Doe')
	) [t1]([Id], [Id0], [Value])
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
		(2,2,N'Janet'), (3,3,N'Doe')
	) [t1]([Id], [Id0], [Value])
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

