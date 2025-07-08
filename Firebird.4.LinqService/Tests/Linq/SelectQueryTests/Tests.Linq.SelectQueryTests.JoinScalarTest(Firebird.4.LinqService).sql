BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	"t"."Value",
	"s_1"."c1"
FROM
	"SampleClass" "t"
		CROSS JOIN LATERAL (
			SELECT
				"s"."c1"
			FROM
				(
					SELECT
						1 as "c1"
					FROM rdb$database
					WHERE
						1 = "t"."Id"
				) "s"
		) "s_1"

