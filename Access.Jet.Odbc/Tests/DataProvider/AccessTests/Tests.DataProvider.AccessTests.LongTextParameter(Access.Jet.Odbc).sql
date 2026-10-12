-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NText(1000) -- String
SET     @Value = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
-- value above truncated for logging

INSERT INTO [LongTextTable]
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
	[LongTextTable] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @value NText(1000) -- String
SET     @value = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
-- value above truncated for logging

SELECT
	COUNT(*)
FROM
	[LongTextTable] [r]
WHERE
	[r].[Value] = ?

