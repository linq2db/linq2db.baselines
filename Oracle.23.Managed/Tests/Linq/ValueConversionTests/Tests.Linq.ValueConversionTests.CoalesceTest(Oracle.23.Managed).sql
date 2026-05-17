-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Coalesce(To_NChar(t1."EnumNullable"), t1."Enum")
FROM
	"ValueConversion" t1

