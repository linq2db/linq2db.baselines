-- Sybase.Managed Sybase

INSERT INTO [Table2]
(
	[ID]
)
SELECT
	[t].[ID]
FROM
	[Table1] [t]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[Table2] [t1]

