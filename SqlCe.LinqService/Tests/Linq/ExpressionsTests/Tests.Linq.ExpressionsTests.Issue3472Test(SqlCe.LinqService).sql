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
	[t1].[Count_1] as [PersonsCount]
FROM
	[Issue3472TableDCTX] [t2]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Person] [p]
			WHERE
				[p].[PersonID] = [t2].[Id]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3472TableDCTX]

