﻿-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[MasterId],
	[a_Master].[Id]
FROM
	[Details] [t1]
		INNER JOIN [Masters] [a_Master] ON [t1].[MasterId] = [a_Master].[Id]



