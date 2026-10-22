-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Text(1000) -- AnsiString
SET     @Value = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
-- value above truncated for logging

INSERT INTO [LongAnsiTextTable]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[LongAnsiTextTable] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @value Text(1000) -- AnsiString
SET     @value = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
-- value above truncated for logging

SELECT
	COUNT(*)
FROM
	[LongAnsiTextTable] [r]
WHERE
	[r].[Value] = ?

