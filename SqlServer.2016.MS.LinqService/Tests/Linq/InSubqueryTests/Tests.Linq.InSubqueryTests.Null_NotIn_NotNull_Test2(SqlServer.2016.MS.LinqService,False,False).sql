﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND ([t].[ID] IS NULL OR [t].[ID] NOT IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	))

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

