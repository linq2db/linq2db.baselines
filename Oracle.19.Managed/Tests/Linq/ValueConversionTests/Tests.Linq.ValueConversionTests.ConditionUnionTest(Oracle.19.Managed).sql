-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t1."EnumNullable" IS NOT NULL THEN CAST(t1."EnumNullable" AS NVarChar2(50))
		ELSE t1."Enum"
	END
FROM
	"ValueConversion" t1
UNION ALL
SELECT
	CASE
		WHEN t1_1."EnumNullable" IS NOT NULL THEN CAST(t1_1."EnumNullable" AS NVarChar2(50))
		ELSE t1_1."Enum"
	END
FROM
	"ValueConversion" t1_1

