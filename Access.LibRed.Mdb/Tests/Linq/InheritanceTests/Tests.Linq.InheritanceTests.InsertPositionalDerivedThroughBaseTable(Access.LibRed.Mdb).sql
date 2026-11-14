-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Code],
	[t1].[Value]
FROM
	[InheritanceFilterPositional] [t1]

