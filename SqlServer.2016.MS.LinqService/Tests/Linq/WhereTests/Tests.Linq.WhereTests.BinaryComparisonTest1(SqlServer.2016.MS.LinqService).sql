﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			([t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL)
	), 1, 0)

