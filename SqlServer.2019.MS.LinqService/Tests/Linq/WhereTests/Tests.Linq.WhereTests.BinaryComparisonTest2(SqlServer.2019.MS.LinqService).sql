﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	IIF( EXISTS (
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			NOT ([t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL)
	), 1, 0)

