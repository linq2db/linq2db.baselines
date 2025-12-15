-- Firebird.5 Firebird4

UPDATE
	"SampleClass"
SET
	"VarcharValue" = (
		SELECT
			(
				SELECT
					Coalesce(LIST(Coalesce("a_Children"."VarcharValue", ''), ', '), '')
				FROM
					"SampleClass" "a_Children"
				WHERE
					"t_1"."Id" = "a_Children"."Id"
			)
		FROM
			"SampleClass" "t_1"
		WHERE
			"SampleClass"."Id" = "t_1"."Id" AND
			("SampleClass"."NullableValue" = "t_1"."NullableValue" OR "SampleClass"."NullableValue" IS NULL AND "t_1"."NullableValue" IS NULL) AND
			"SampleClass"."NotNullableValue" = "t_1"."NotNullableValue" AND
			("SampleClass"."VarcharValue" = "t_1"."VarcharValue" OR "SampleClass"."VarcharValue" IS NULL AND "t_1"."VarcharValue" IS NULL) AND
			("SampleClass"."NVarcharValue" = "t_1"."NVarcharValue" OR "SampleClass"."NVarcharValue" IS NULL AND "t_1"."NVarcharValue" IS NULL)
	),
	"NVarcharValue" = (
		SELECT
			(
				SELECT
					Coalesce(LIST(Coalesce("a_Children_1"."VarcharValue", ''), ', '), '')
				FROM
					"SampleClass" "a_Children_1"
				WHERE
					"t_2"."Id" = "a_Children_1"."Id"
			)
		FROM
			"SampleClass" "t_2"
		WHERE
			"SampleClass"."Id" = "t_2"."Id" AND
			("SampleClass"."NullableValue" = "t_2"."NullableValue" OR "SampleClass"."NullableValue" IS NULL AND "t_2"."NullableValue" IS NULL) AND
			"SampleClass"."NotNullableValue" = "t_2"."NotNullableValue" AND
			("SampleClass"."VarcharValue" = "t_2"."VarcharValue" OR "SampleClass"."VarcharValue" IS NULL AND "t_2"."VarcharValue" IS NULL) AND
			("SampleClass"."NVarcharValue" = "t_2"."NVarcharValue" OR "SampleClass"."NVarcharValue" IS NULL AND "t_2"."NVarcharValue" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SampleClass" "t"
		WHERE
			"SampleClass"."Id" = "t"."Id" AND
			("SampleClass"."NullableValue" = "t"."NullableValue" OR "SampleClass"."NullableValue" IS NULL AND "t"."NullableValue" IS NULL) AND
			"SampleClass"."NotNullableValue" = "t"."NotNullableValue" AND
			("SampleClass"."VarcharValue" = "t"."VarcharValue" OR "SampleClass"."VarcharValue" IS NULL AND "t"."VarcharValue" IS NULL) AND
			("SampleClass"."NVarcharValue" = "t"."NVarcharValue" OR "SampleClass"."NVarcharValue" IS NULL AND "t"."NVarcharValue" IS NULL)
	)

