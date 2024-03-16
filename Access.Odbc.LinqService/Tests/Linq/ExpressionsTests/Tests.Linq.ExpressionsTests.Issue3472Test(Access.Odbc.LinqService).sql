﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3472TableDCTX]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue3472TableDCTX]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Issue3472TableDCTX]
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
	[t1].[Id],
	(
		SELECT
			Count(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDCTX] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3472TableDCTX]

