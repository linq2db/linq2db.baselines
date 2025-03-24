﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[p].[ID] IS NOT NULL AND [t].[ID] = [p].[ID]
	)

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

