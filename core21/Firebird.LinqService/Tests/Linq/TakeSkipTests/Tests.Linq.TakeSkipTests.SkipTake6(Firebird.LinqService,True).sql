BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT FIRST @take
			"p"."ParentID"
		FROM
			"GrandChild" "p"
	) "t1"
WHERE
	"c_1"."ParentID" = "t1"."ParentID"

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 12

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT FIRST @take SKIP @skip
			"p"."ParentID"
		FROM
			"GrandChild" "p"
	) "t1"
WHERE
	"c_1"."ParentID" = "t1"."ParentID"

