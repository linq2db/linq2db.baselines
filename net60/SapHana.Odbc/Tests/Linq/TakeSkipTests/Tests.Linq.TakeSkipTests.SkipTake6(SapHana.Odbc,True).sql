BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		LIMIT ?
	) "t1"
WHERE
	"c_1"."ParentID" = "t1"."ParentID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 12

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		LIMIT ? OFFSET ?
	) "t1"
WHERE
	"c_1"."ParentID" = "t1"."ParentID"

