﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [_]
			WHERE
				CASE
					WHEN [_].[FirstName] = [_].[FirstName]
						THEN 1
					ELSE 0
				END <> CASE
					WHEN [_].[MiddleName] <> [_].[LastName]
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END

