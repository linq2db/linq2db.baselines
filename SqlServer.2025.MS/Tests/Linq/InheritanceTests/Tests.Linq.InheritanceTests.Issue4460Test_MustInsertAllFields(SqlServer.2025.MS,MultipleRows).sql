-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
VALUES
(1,N'GrandChild',N'Tom',N'Black')

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

