﻿BeforeExecute
-- SqlCe

DROP TABLE [SampleData]

BeforeExecute
-- SqlCe

CREATE TABLE [SampleData]
(
	[Id]     Int NOT NULL,
	[Value1] Int NOT NULL,
	[Value2] Int NOT NULL,
	[Value3] Int NOT NULL,

	CONSTRAINT [PK_SampleData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
SELECT 1,10,100,1000 UNION ALL
SELECT 2,20,200,2000 UNION ALL
SELECT 3,30,300,3000 UNION ALL
SELECT 4,40,400,4000 UNION ALL
SELECT 5,50,500,5000 UNION ALL
SELECT 6,60,600,6000 UNION ALL
SELECT 7,70,700,7000 UNION ALL
SELECT 8,80,800,8000 UNION ALL
SELECT 9,90,900,9000 UNION ALL
SELECT 10,100,1000,10000

BeforeExecute
-- SqlCe

SELECT DISTINCT
	[r_2].[Id],
	[r_2].[Value_1],
	[r_2].[Value_1] as [Value_2]
FROM
	(
		SELECT DISTINCT
			[r].[Id],
			[r].[Value1] as [Value_1]
		FROM
			[SampleData] [r]
		WHERE
			NOT EXISTS(
				SELECT
					*
				FROM
					[SampleData] [r_1]
				WHERE
					[r].[Id] = [r_1].[Id] AND [r].[Value1] = [r_1].[Value2] / 10 AND
					[r_1].[Id] % 4 = 0
			) AND
			[r].[Id] % 2 = 0
	) [r_2]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[SampleData] [r_3]
		WHERE
			[r_2].[Id] = [r_3].[Id] AND [r_2].[Value_1] = [r_3].[Value1] AND
			[r_3].[Id] % 6 = 0
	)

BeforeExecute
-- SqlCe

DROP TABLE [SampleData]

