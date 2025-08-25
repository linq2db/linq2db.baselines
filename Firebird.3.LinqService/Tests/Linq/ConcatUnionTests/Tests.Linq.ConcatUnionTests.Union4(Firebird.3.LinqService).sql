BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."ParentID",
	TRUE
FROM
	"Parent" "p"
UNION
SELECT
	"ch"."ParentID",
	FALSE
FROM
	"Child" "ch"

