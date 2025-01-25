BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."EnumValue"
FROM
	(
		SELECT
			CASE
				WHEN "r"."EnumValue" IS NOT NULL THEN "r"."EnumValue"
				ELSE 0
			END as "EnumValue"
		FROM
			"Issue4167Table" "r"
		WHERE
			"r"."Value" = '000001'
		GROUP BY
			"r"."Value",
			"r"."EnumValue"
	) "t1"
ORDER BY
	"t1"."EnumValue"

