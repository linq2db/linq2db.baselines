﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[r_3].[Value_1]
FROM
	(
		SELECT
			[r].[Id],
			[r].[Value1] as [Value_1]
		FROM
			[SampleData] [r]
		WHERE
			[r].[Id] % 2 = 0
		EXCEPT
		SELECT
			[r_1].[Id],
			[r_1].[Value2] / 10 as [Value_1]
		FROM
			[SampleData] [r_1]
		WHERE
			[r_1].[Id] % 4 = 0
		EXCEPT
		SELECT
			[r_2].[Id],
			[r_2].[Value1] as [Value_1]
		FROM
			[SampleData] [r_2]
		WHERE
			[r_2].[Id] % 6 = 0
	) [r_3]

