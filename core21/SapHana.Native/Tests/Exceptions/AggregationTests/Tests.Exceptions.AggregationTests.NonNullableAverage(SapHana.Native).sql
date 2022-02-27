BeforeExecute
-- SapHana.Native SapHana

SELECT
	Avg("_"."ParentID")
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" < 0

