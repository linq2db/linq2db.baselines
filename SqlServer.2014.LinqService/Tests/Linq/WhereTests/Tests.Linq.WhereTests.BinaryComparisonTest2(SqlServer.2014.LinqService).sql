﻿BeforeExecute
-- SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			[t1].[MiddleName] = [t1].[LastName] AND [t1].[MiddleName] = [t1].[LastName]
	), 1, 0)

