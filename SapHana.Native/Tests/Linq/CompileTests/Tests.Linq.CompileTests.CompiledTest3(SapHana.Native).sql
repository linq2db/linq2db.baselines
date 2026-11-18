-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = :"p"
LIMIT :"p_1"

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = :"p"
LIMIT :"p_1"

