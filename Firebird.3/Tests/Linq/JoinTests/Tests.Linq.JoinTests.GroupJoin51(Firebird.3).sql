BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t2"."ParentID"
		FROM
			"Parent" "t2"
				INNER JOIN (
					SELECT
						"ch"."ParentID",
						ROW_NUMBER() OVER (PARTITION BY "ch"."ParentID" ORDER BY "ch"."ChildID" DESC) as "rn"
					FROM
						"Child" "ch"
				) "t1" ON "t2"."ParentID" = "t1"."ParentID" AND "t1"."rn" <= 1
		WHERE
			"t2"."ParentID" = 1
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t2"."ParentID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "t2"
		INNER JOIN (
			SELECT
				"ch"."ParentID",
				"ch"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "ch"."ParentID" ORDER BY "ch"."ChildID" DESC) as "rn"
			FROM
				"Child" "ch"
		) "t1" ON "t2"."ParentID" = "t1"."ParentID" AND "t1"."rn" <= 1
WHERE
	"t2"."ParentID" = 1

