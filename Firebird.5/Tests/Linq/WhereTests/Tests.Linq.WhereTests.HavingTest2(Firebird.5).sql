-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
GROUP BY
	"c_1"."ParentID"
HAVING
	COUNT(*) > 1

