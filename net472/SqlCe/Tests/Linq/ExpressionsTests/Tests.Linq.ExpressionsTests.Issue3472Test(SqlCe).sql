BeforeExecute
-- SqlCe

DROP TABLE [Issue3472TableDC]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3472TableDC]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue3472TableDC]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlCe

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
		) [t1] ON [t1].[PersonID] = [t2].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3472TableDC]

