-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DateTime DateTime
SET     @DateTime = #2000-01-01#

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DateTime DateTime
SET     @DateTime = #2018-11-24 01:02:03#

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[DateTime]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

