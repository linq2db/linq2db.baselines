-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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
	@data
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t].[ID],
	[t].[Data]
FROM
	[StringTestTable] [t]
WHERE
	[t].[ID] = 2

