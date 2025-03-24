﻿BeforeExecute
--  SqlServer.2022

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

BeforeExecute
--  SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
--  SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

