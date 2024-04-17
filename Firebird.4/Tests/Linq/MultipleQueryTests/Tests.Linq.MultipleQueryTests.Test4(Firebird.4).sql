BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"key_data_result"."ParentID",
	"key_data_result"."Value1",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID",
			"p"."Value1"
		FROM
			"Parent" "p"
	) "key_data_result"
		INNER JOIN "Child" "detail" ON "key_data_result"."ParentID" = "detail"."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

