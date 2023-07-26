BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3472TableDC]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue3472TableDC]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT
	[t2].[Id],
	[t1].[cnt]
FROM
	[Issue3472TableDC] [t2]
		LEFT JOIN (
			SELECT
				Count(*) as [cnt],
				[p].[PersonID]
			FROM
				[Person] [p]
			GROUP BY
				[p].[PersonID]
		) [t1] ON ([t1].[PersonID] = [t2].[Id])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3472TableDC]

