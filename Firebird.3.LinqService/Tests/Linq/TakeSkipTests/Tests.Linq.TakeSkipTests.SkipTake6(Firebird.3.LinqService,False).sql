﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		FETCH NEXT 3 ROWS ONLY
	) "p_1"
WHERE
	"c_1"."ParentID" = "p_1"."ParentID" AND "p_1"."ParentID" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		OFFSET 12 ROWS FETCH NEXT 3 ROWS ONLY 
	) "p_1"
WHERE
	"c_1"."ParentID" = "p_1"."ParentID" AND "p_1"."ParentID" IS NOT NULL

