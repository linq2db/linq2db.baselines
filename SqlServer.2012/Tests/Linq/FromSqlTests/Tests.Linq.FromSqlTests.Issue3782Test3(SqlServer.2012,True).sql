﻿BeforeExecute
-- SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			(
				SELECT IIF(EXISTS(SELECT * FROM [INFORMATION_SCHEMA].[TABLES] [x] WHERE [x].[TABLE_NAME] = N'Person'),1,0) ttt
			) [t1]([value])
	), 1, 0)

