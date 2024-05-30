BeforeExecute
-- Firebird.4 Firebird4

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

