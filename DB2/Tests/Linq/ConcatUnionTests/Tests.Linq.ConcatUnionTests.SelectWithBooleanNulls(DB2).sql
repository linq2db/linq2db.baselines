﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "t1"
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "x"."ParentID" <> 0 THEN 1
		ELSE 0
	END
FROM
	"Parent" "x"
UNION ALL
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "t2"
		)
			THEN 1
		ELSE 0
	END,
	CAST(NULL AS smallint)
FROM
	"Parent" "x_1"

