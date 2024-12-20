BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3472TableDC]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue3472TableDC]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3472TableDC]

