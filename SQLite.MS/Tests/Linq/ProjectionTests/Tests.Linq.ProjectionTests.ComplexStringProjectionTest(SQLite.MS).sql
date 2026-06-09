-- SQLite.MS SQLite
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

-- SQLite.MS SQLite

SELECT
	[t].[ID],
	[t].[Data]
FROM
	[StringTestTable] [t]
WHERE
	[t].[ID] = 2
LIMIT 2

