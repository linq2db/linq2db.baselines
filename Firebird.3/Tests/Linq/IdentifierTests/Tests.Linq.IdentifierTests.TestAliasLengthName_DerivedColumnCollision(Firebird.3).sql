-- Firebird.3 Firebird3
SELECT
	"x"."abcdefghijabcdefghijabcdefg",
	"x"."abcdefghijabcdefghijabcdefg_1"
FROM
	(
		SELECT
			"p"."ParentID" + 1 as "abcdefghijabcdefghijabcdefg",
			"p"."ParentID" + 2 as "abcdefghijabcdefghijabcdefg_1"
		FROM
			"Parent" "p"
	) "x"
WHERE
	"x"."abcdefghijabcdefghijabcdefg" > 0 AND "x"."abcdefghijabcdefghijabcdefg_1" > 0

