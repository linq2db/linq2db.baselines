BeforeExecute
-- Firebird.3 Firebird3

SELECT DISTINCT
	"r"."Value1"
FROM
	"SampleData" "r"
WHERE
	Mod("r"."Id", 2) = 0 AND NOT EXISTS(
		SELECT
			*
		FROM
			"SampleData" "r_1"
		WHERE
			Mod("r_1"."Id", 4) = 0 AND "r"."Id" = "r_1"."Id" AND
			"r"."Value1" = "r_1"."Value2" / 10
	) AND
	NOT EXISTS(
		SELECT
			*
		FROM
			"SampleData" "r_2"
		WHERE
			Mod("r_2"."Id", 6) = 0 AND "r"."Id" = "r_2"."Id" AND
			"r"."Value1" = "r_2"."Value1"
	)

