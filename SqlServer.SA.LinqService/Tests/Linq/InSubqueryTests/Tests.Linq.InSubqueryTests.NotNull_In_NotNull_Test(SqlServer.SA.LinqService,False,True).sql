﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)

BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

