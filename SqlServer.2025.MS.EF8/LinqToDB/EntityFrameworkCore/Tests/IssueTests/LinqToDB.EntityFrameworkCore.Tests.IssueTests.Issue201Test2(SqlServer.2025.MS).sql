﻿-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Parents] [x]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Children] [y]
		WHERE
			[x].[Id] = [y].[ParentId] AND [y].[IsActive] = 1
	)



