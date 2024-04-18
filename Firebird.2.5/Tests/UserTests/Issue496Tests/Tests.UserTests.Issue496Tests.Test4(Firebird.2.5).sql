﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"key_data_result"."ParentID",
	"detail"."ChildID",
	"detail"."ParentID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "key_data_result"
		INNER JOIN "Child" "detail" ON Cast("key_data_result"."ParentID" as BigInt) = "detail"."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID"
FROM
	"Parent" "t1"

