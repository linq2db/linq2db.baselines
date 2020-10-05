BeforeExecute
-- SapHana.Native SapHana

SELECT
	Max("_"."ParentID")
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" < 0

