-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = ? AND CURRENT_TIMESTAMP > TIMESTAMP '2020-02-29 00:00:00.0000000'
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND CURRENT_TIMESTAMP > TIMESTAMP '2020-02-29 00:00:00.0000000'

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = ? AND CURRENT_TIMESTAMP > TIMESTAMP '2020-02-29 00:00:00.0000000'
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND CURRENT_TIMESTAMP > TIMESTAMP '2020-02-29 00:00:00.0000000'

