-- Firebird.3 Firebird3

SELECT
	("t"."ParentID" * 1000) / 1000
FROM
	"Child" "t"
WHERE
	"t"."ParentID" * 1000 > 2000

