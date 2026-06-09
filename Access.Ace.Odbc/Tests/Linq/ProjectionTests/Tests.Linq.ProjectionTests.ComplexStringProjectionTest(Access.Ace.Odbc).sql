-- Access.Ace.Odbc AccessODBC
DECLARE @data NVarChar -- String
SET     @data = NULL

INSERT INTO [StringTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	2,
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t].[ID],
	[t].[Data]
FROM
	[StringTestTable] [t]
WHERE
	[t].[ID] = 2

