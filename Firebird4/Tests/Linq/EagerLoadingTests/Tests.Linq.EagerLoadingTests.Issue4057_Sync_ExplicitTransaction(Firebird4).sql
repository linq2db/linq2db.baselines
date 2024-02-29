BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"lw_Parent"."ParentID",
	"detail"."ParentID",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			(
				SELECT FIRST @take
					"x"."ParentID"
				FROM
					"Parent" "x"
				WHERE
					"x"."ParentID" = 3
			) "t1"
	) "lw_Parent"
		INNER JOIN "Child" "detail" ON "lw_Parent"."ParentID" = "detail"."ParentID"

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"lw_Parent"."ParentID",
	"detail"."ParentID",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			(
				SELECT FIRST @take
					"x"."ParentID"
				FROM
					"Parent" "x"
				WHERE
					"x"."ParentID" = 3
			) "t1"
	) "lw_Parent"
		INNER JOIN "Child" "detail" ON "lw_Parent"."ParentID" = "detail"."ParentID"

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"lw_Parent"."ParentID",
	"detail"."ParentID",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			(
				SELECT FIRST @take
					"x"."ParentID"
				FROM
					"Parent" "x"
				WHERE
					"x"."ParentID" = 3
			) "t1"
	) "lw_Parent"
		INNER JOIN "Child" "detail" ON "lw_Parent"."ParentID" = "detail"."ParentID"

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3

BeforeExecute
DisposeTransaction
