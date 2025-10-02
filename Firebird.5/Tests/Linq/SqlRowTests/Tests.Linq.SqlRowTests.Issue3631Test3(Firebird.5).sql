BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."Id",
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT CAST('US' AS VARCHAR(2)) AS "Item1", CAST('CA' AS VARCHAR(2)) AS "Item2" FROM rdb$database
				UNION ALL
				SELECT CAST('US' AS VARCHAR(2)), CAST('NY' AS VARCHAR(2)) FROM rdb$database) "t1"
		WHERE
			"x"."Country" = "t1"."Item1" AND "x"."State" = "t1"."Item2"
	)

