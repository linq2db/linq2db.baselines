BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue3472TableDC]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue3472TableDC]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
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
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue3472TableDC]

