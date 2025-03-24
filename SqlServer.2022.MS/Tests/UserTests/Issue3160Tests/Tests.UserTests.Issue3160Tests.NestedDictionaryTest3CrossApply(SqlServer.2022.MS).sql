﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	[t2].[cond_1],
	[t2].[cond],
	[t2].[Id3],
	[t2].[Name3],
	[t2].[Name2],
	[t1_1].[NAME1]
FROM
	[TABLE1] [t1_1]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[c1] as [cond],
				[t1].[Id3],
				[t1].[Name3],
				N't2' as [cond_1],
				[x_1].[NAME2] as [Name2]
			FROM
				[TABLE2] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[ID3] as [Id3],
							[x].[NAME3] as [Name3],
							N't3' as [c1]
						FROM
							[TABLE3] [x]
						WHERE
							[x].[PARENTID3] = [x_1].[ID2]
					) [t1]
			WHERE
				[x_1].[PARENTID2] = [t1_1].[ID1]
		) [t2]

