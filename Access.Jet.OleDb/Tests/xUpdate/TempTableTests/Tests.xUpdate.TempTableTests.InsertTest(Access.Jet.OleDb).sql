-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[Table2] [t1]

