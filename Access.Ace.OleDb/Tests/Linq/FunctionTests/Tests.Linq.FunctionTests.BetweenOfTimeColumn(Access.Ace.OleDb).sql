-- Access.Ace.OleDb AccessOleDb
DECLARE @low DBTime -- Time
SET     @low = 01:30:00
DECLARE @high DBTime -- Time
SET     @high = 03:00:00

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @low DBTime -- Time
SET     @low = 01:30:00
DECLARE @high DBTime -- Time
SET     @high = 03:00:00

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] NOT BETWEEN @low AND @high
ORDER BY
	[r].[Id]

