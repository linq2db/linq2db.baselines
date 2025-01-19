BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Enum",
	t1."EnumNullable",
	t1."EnumWithNull",
	t1."EnumWithNullDeclarative",
	t1."BoolValue",
	t1."AnotherBoolValue",
	t1."DateTimeNullable"
FROM
	"ValueConversion" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Value1",
	t."Value2"
FROM
	"ValueConversion" t
ORDER BY
	t."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2"
FROM
	(
		SELECT
			t."Id",
			t."Value1",
			t."Value2"
		FROM
			"ValueConversion" t
	) t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t2."Id",
	t2."Value1",
	t2."Value2"
FROM
	(
		SELECT
			t."Id",
			t."Value1",
			t."Value2"
		FROM
			"ValueConversion" t
		UNION ALL
		SELECT
			t1."Id",
			t1."Value1",
			t1."Value2"
		FROM
			(
				SELECT
					t_1."Id",
					t_1."Value1",
					t_1."Value2"
				FROM
					"ValueConversion" t_1
			) t1
	) t2
ORDER BY
	t2."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t3."Value2"
FROM
	(
		SELECT
			t2."Value2",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1."Value2"
				FROM
					(
						SELECT
							t."Id",
							t."Value2"
						FROM
							"ValueConversion" t
					) t1
				ORDER BY
					t1."Id"
			) t2
		WHERE
			ROWNUM <= (:skip + 1)
	) t3
WHERE
	t3.RN > :skip

