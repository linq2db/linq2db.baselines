﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH CTE_1 ("ParentID", "ChildID")
AS
(
	SELECT DISTINCT
		"c_1"."ParentID",
		"c_1"."ChildID"
	FROM
		"Child" "c_1"
	WHERE
		"c_1"."ParentID" > 1
)
SELECT
	COUNT(*)
FROM
	CTE_1 "t1"

