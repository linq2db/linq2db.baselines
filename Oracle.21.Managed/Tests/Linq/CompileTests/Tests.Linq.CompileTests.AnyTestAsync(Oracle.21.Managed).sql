﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @p Int32
SET     @p = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :p
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @p Int32
SET     @p = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :p
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

