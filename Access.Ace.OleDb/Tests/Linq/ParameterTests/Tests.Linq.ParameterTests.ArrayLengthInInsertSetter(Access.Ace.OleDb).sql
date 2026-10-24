-- Access.Ace.OleDb AccessOleDb
DECLARE @arr Integer -- Int32
SET     @arr = 3

INSERT INTO [ArrayLengthTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	@arr
)

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[ArrayLengthTable] [t1]

