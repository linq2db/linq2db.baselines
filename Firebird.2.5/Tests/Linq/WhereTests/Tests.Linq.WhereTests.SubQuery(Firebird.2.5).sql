BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	("t"."ParentID" * 1000) / 1000
FROM
	"Child" "t"
WHERE
	"t"."ParentID" * 1000 > 2000

