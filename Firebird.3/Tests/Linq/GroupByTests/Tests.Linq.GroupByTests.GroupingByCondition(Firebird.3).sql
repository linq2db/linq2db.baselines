-- Firebird.3 Firebird3

SELECT
	"g_1"."isValueAvailable",
	"g_1"."ParentID",
	"g_1"."Value_1",
	COUNT(*)
FROM
	(
		SELECT
			"c_1"."ParentID",
			Mod("c_1"."ChildID", 2) = 0 as "isValueAvailable",
			NULL as "Value_1"
		FROM
			"Child" "c_1"
	) "g_1"
WHERE
	"g_1"."isValueAvailable"
GROUP BY
	"g_1"."isValueAvailable",
	"g_1"."ParentID",
	"g_1"."Value_1"

-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

