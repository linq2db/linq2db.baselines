-- SqlServer.2022.MS SqlServer.2022
INSERT INTO [InheritanceFilterPositional]
(
	[Id],
	[Code],
	[Value]
)
VALUES
(
	1,
	1,
	42
)

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	[t1].[Id],
	[t1].[Code],
	[t1].[Value]
FROM
	[InheritanceFilterPositional] [t1]

