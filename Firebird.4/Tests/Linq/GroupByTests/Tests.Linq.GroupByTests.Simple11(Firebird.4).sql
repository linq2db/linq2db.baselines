﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."ParentID",
	"m_1"."ChildID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t3"."ParentID",
			"t3"."ChildID"
		FROM
			(
				SELECT
					"t2"."ParentID",
					"t2"."ChildID"
				FROM
					(
						SELECT
							"t1"."ParentID" + 1 as "ParentID",
							"t1"."ChildID"
						FROM
							"GrandChild" "t1"
					) "t2"
				GROUP BY
					"t2"."ParentID",
					"t2"."ChildID"
			) "t3"
	) "m_1"
		INNER JOIN "GrandChild" "d" ON ("m_1"."ParentID" = "d"."ParentID" + 1 OR "m_1"."ParentID" IS NULL AND "d"."ParentID" IS NULL) AND ("m_1"."ChildID" = "d"."ChildID" OR "m_1"."ChildID" IS NULL AND "d"."ChildID" IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT
			"t1"."ParentID" + 1 as "ParentID",
			"t1"."ChildID"
		FROM
			"GrandChild" "t1"
	) "t2"
GROUP BY
	"t2"."ParentID",
	"t2"."ChildID"

