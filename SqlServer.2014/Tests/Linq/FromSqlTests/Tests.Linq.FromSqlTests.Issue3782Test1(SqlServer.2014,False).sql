﻿BeforeExecute
-- SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			(
				SELECT IIF(EXISTS(SELECT * FROM [INFORMATION_SCHEMA].[TABLES] [x] WHERE [x].[TABLE_NAME] = N'Person'),1,0)
			) [t1]
	), 1, 0)

