﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
		WHERE
			IIF([_].[MiddleName] = N'123', 1, 0) = IIF(IIF([_].[MiddleName] = N'1', N'test', [_].[MiddleName]) = N'test', 1, 0)
	), 1, 0)

