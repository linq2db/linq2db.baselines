BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @values  -- Int32
SET     @values = 1
DECLARE @values  -- Int32
SET     @values = 2
DECLARE @values  -- Int32
SET     @values = 3
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	("o"."ParentID" IN (?, ?, ?) OR "o"."ParentID" = ?)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	(("o"."ParentID" IN (1, 2, 3) OR "o"."ParentID" IS NULL) OR "o"."ParentID" = ?)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @values  -- Int32
SET     @values = 4
DECLARE @values  -- Int32
SET     @values = 5
DECLARE @values  -- Int32
SET     @values = 6
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	("o"."ParentID" IN (?, ?, ?) OR "o"."ParentID" = ?)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	(("o"."ParentID" IN (4, 5, 6) OR "o"."ParentID" IS NULL) OR "o"."ParentID" = ?)

