﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :ParentID
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :ParentID
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

