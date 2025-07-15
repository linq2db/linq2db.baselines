﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[Date_1],
	[t1].[Value_1]
FROM
	(
		SELECT TOP (@take)
			[x].[Id],
			(
				SELECT TOP (1)
					[a_Confirmations].[Date]
				FROM
					[Confirmation] [a_Confirmations]
				WHERE
					[x].[Id] = [a_Confirmations].[BatchId]
			) as [Date_1],
			[x].[Value] as [Value_1]
		FROM
			[Batch] [x]
		ORDER BY
			[x].[Id] DESC
	) [t1]
ORDER BY
	[t1].[Id]

