-- SapHana.Native SapHana
SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	"x"."ChildID" DESC,
	MOD("x"."ChildID", 2)

