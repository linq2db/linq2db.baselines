-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer(4) -- Int32
SET     @value = 3
DECLARE @low Integer(4) -- Int32
SET     @low = 0

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	@value BETWEEN @low AND "p"."ParentID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer(4) -- Int32
SET     @value = 3
DECLARE @low Integer(4) -- Int32
SET     @low = 0

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	@value NOT BETWEEN @low AND "p"."ParentID"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

