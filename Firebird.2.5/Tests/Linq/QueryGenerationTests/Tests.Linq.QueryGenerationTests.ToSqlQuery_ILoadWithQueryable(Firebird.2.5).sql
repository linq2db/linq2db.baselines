﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			(
				SELECT FIRST 2
					"p"."ParentID"
				FROM
					"Parent" "p"
				WHERE
					"p"."ParentID" = 1
			) "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
--  Firebird.2.5 Firebird

SELECT FIRST 2
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

BeforeExecute
DisposeTransaction
