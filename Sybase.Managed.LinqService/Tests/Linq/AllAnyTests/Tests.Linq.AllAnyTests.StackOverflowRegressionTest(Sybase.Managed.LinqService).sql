﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
		)
			THEN 1
		ELSE 0
	END

