﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."ParentID",
	"d_1"."Key_1",
	"d_1"."ToValue"
FROM
	(
		SELECT DISTINCT
			"c_1"."ParentID"
		FROM
			"Parent" "c_1"
	) "m_1"
		CROSS JOIN LATERAL (
			SELECT
				"d"."ParentID" as "Key_1",
				LIST("d"."ChildID", ', ') as "ToValue"
			FROM
				"Child" "d"
			WHERE
				"m_1"."ParentID" = "d"."ParentID"
			GROUP BY
				"d"."ParentID"
		) "d_1"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"c_1"."ParentID"
FROM
	"Parent" "c_1"

