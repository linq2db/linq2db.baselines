﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT DISTINCT
	[a_Child].[ID]
FROM
	[ExtensionTable1] [r]
		LEFT JOIN [ExtensionTable2] [a_Child] ON [r].[FK] = [a_Child].[ID]
WHERE
	[a_Child].[ID] IS NOT NULL

