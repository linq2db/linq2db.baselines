﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3472TableDC]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3472TableDC]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [Issue3472TableDC]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3472TableDC]

