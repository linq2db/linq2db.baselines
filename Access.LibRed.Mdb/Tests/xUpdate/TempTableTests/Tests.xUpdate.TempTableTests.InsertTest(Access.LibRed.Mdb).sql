-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[Table2] [t1]

