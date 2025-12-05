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
		(2,N'Janet'), (3,N'Doe')
	) [t1]([Id], [Value])
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

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
		(2,N'Janet'), (3,N'Doe')
	) [t1]([Id], [Value])
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

