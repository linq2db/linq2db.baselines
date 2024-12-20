BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue3472TableDC]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue3472TableDC]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Issue3472TableDC]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDC] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue3472TableDC]

