﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN 11 IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

