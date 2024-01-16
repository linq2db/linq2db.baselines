BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3472TableDCTX]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue3472TableDCTX]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [Issue3472TableDCTX]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t2].[Id],
	[t1].[cnt]
FROM
	[Issue3472TableDCTX] [t2]
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
-- Access AccessOleDb

DROP TABLE [Issue3472TableDCTX]

