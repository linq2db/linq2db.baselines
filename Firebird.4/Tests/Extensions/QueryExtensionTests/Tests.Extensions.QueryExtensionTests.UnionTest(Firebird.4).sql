﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"t"."ParentID",
	"t"."ChildID"
FROM
	"Child" "t"
UNION
SELECT
	"t_1"."ParentID",
	"t_1"."ChildID"
FROM
	"Child" "t_1"
WHERE
	"t_1"."ChildID" < 10

