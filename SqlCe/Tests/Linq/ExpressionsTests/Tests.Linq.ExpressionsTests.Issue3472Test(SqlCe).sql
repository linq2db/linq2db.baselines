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
	[t1].[COUNT_1] as [PersonsCount]
FROM
	[Issue3472TableDC] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Person] [p]
			WHERE
				[p].[PersonID] = [t2].[Id]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3472TableDC]

