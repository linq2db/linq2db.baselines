-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
VALUES
(
	543,
	123
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

