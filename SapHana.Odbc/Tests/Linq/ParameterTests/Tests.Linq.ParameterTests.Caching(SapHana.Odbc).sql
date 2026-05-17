-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = ? OR "x"."ParentID" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = ? OR "x"."ParentID" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

