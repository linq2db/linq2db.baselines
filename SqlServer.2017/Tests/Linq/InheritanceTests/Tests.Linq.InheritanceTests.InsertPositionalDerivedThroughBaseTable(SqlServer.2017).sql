-- SqlServer.2017
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

-- SqlServer.2017
SELECT TOP (2)
	[t1].[Id],
	[t1].[Code],
	[t1].[Value]
FROM
	[InheritanceFilterPositional] [t1]

