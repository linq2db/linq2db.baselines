﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird4 Firebird

SELECT
	"key_data_result"."ParentID",
	"key_data_result"."Value1",
	"gjd_ch"."ParentID",
	"gjd_ch"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t"."ParentID",
			"t"."Value1"
		FROM
			"Parent" "t"
		WHERE
			"t"."ParentID" = 2
	) "key_data_result"
		INNER JOIN "Child" "gjd_ch" ON "gjd_ch"."ParentID" = "key_data_result"."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 2

