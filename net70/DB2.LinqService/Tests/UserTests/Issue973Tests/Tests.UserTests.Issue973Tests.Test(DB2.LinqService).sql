BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @values Integer(4) -- Int32
SET     @values = 1
DECLARE @values_1 Integer(4) -- Int32
SET     @values_1 = 2
DECLARE @values_2 Integer(4) -- Int32
SET     @values_2 = 3
DECLARE @param Integer(4) -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	("o"."ParentID" IN (@values, @values_1, @values_2) OR "o"."ParentID" = @param)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param Integer(4) -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	(("o"."ParentID" IN (1, 2, 3) OR "o"."ParentID" IS NULL) OR "o"."ParentID" = @param)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @values Integer(4) -- Int32
SET     @values = 4
DECLARE @values_1 Integer(4) -- Int32
SET     @values_1 = 5
DECLARE @values_2 Integer(4) -- Int32
SET     @values_2 = 6
DECLARE @param Integer(4) -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	("o"."ParentID" IN (@values, @values_1, @values_2) OR "o"."ParentID" = @param)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param Integer(4) -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	(("o"."ParentID" IN (4, 5, 6) OR "o"."ParentID" IS NULL) OR "o"."ParentID" = @param)

