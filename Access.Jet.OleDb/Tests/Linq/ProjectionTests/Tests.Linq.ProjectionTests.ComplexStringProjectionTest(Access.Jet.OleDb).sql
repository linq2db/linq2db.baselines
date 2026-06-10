-- Access.Jet.OleDb AccessOleDb
DECLARE @data VarWChar -- String
SET     @data = NULL

INSERT INTO [StringTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	2,
	@data
)

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t].[ID],
	[t].[Data]
FROM
	[StringTestTable] [t]
WHERE
	[t].[ID] = 2

