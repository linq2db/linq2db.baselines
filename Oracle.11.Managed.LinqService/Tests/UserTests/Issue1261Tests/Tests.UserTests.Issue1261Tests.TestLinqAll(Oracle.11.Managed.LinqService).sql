﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				1
			FROM
				"GrandChild" x
			WHERE
				x."ParentID" = 1 AND NOT (x."ChildID" = 11 AND x."GrandChildID" = 777)
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				1
			FROM
				"GrandChild" x
			WHERE
				x."ParentID" = 1 AND NOT (x."GrandChildID" = 777 AND x."ChildID" = 11)
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

