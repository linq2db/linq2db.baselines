﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird3 Firebird

SELECT
	"key_data_result"."ParentID",
	"key_data_result"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID",
			"p"."Value1"
		FROM
			"Parent" "p"
	) "key_data_result"
		INNER JOIN "Child" "c_1" ON "c_1"."ParentID" = "key_data_result"."ParentID"
ORDER BY
	"c_1"."ChildID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"

