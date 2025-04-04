﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Child" "c_1"
				WHERE
					"p"."ParentID" = "c_1"."ParentID" AND "c_1"."ParentID" > 1
			)
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

