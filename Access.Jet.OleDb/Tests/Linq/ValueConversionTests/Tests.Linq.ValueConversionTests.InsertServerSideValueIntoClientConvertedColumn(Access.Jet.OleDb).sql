-- Access.Jet.OleDb AccessOleDb
INSERT INTO [ShiftedDateRow]
(
	[Id],
	[Plain],
	[Date]
)
VALUES
(
	1,
	Now,
	Now
)

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]

