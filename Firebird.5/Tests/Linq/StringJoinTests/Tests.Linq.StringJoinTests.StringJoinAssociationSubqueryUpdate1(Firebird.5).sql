-- Firebird.5 Firebird4

UPDATE
	"SampleClass"
SET
	"VarcharValue" = (
		SELECT
			"t1"."Result_1"
		FROM
			"SampleClass" "t_1"
				LEFT JOIN LATERAL (
					SELECT
						LIST("a_Children"."VarcharValue", ' | ') as "Result_1"
					FROM
						"SampleClass" "a_Children"
					WHERE
						"t_1"."Id" = "a_Children"."Id"
				) "t1" ON 1=1
		WHERE
			"SampleClass".PK = "t_1".PK
	),
	"NVarcharValue" = (
		SELECT
			"t2"."Result_1"
		FROM
			"SampleClass" "t_2"
				LEFT JOIN LATERAL (
					SELECT
						LIST("a_Children_1"."VarcharValue", ' | ') as "Result_1"
					FROM
						"SampleClass" "a_Children_1"
					WHERE
						"t_2"."Id" = "a_Children_1"."Id"
				) "t2" ON 1=1
		WHERE
			"SampleClass".PK = "t_2".PK
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SampleClass" "t"
		WHERE
			"SampleClass".PK = "t".PK
	)

