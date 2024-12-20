BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [CreateTableTypes]
(
	[String] NVarChar(10) NOT NULL,
	[Id]     Int          NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @String NVarChar -- String
SET     @String = ''

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @String NVarChar(7) -- String
SET     @String = 'test 10'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CreateTableTypes]

