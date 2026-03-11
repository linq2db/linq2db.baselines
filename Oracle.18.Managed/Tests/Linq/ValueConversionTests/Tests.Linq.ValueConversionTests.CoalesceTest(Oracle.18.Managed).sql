-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Coalesce(CAST(t1."EnumNullable" AS NVarChar2(50)), t1."Enum")
FROM
	"ValueConversion" t1

