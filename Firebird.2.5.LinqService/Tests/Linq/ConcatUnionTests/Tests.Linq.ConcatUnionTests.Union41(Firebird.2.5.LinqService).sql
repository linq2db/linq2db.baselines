BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."ParentID",
	CAST('1' AS CHAR(1))
FROM
	"Parent" "p"
UNION
SELECT
	"ch"."ParentID",
	CAST('0' AS CHAR(1))
FROM
	"Child" "ch"

