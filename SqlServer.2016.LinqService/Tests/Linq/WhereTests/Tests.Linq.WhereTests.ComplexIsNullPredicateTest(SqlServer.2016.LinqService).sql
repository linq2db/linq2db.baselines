﻿BeforeExecute
-- SqlServer.2016

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			IIF([t1].[MiddleName] = N'123', 1, 0) = IIF([t1].[MiddleName] = N'1' OR [t1].[MiddleName] = N'test' AND ([t1].[MiddleName] <> N'1' OR [t1].[MiddleName] IS NULL), 1, 0)
	), 1, 0)

