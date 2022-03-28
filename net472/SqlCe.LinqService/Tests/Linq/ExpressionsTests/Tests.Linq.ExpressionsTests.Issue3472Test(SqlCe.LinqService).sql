BeforeExecute
-- SqlCe

DROP TABLE [Issue3472TableDCTX]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3472TableDCTX]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
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
-- SqlCe

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
		) [t1] ON [t1].[PersonID] = [t2].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3472TableDCTX]

