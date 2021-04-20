﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 10

SELECT
	"key_data_result"."ParentID",
	"key_data_result"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			(
				SELECT FIRST @p_1
					"p"."ParentID",
					"p"."Value1"
				FROM
					"Parent" "p"
			) "t1"
	) "key_data_result"
		INNER JOIN "Child" "c_1" ON "c_1"."ParentID" = "key_data_result"."ParentID"
ORDER BY
	"c_1"."ChildID"

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT FIRST @take
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"

