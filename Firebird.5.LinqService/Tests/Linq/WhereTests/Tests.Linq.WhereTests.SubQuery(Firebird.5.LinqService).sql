BeforeExecute
-- Firebird.5 Firebird4

SELECT
	("t"."ParentID" * 1000) / 1000
FROM
	"Child" "t"
WHERE
	"t"."ParentID" * 1000 > 2000

