-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t2."Converted1",
	t2."Converted2",
	t2."Converted1"
FROM
	(
		SELECT
			Coalesce(CAST(t1."EnumNullable" AS NVarChar2(50)), t1."Enum") as "Converted1",
			t1."Value1" as "Converted2"
		FROM
			"ValueConversion" t1
	) t2
UNION
SELECT
	Coalesce(CAST(t1_1."EnumNullable" AS NVarChar2(50)), t1_1."Enum"),
	t1_1."Value1",
	Coalesce(CAST(t1_1."EnumNullable" AS NVarChar2(50)), t1_1."Enum")
FROM
	"ValueConversion" t1_1

