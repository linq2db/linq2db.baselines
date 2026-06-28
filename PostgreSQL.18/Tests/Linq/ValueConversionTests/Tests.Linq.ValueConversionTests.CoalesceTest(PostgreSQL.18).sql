-- PostgreSQL.18 PostgreSQL13

SELECT
	Coalesce(t1."EnumNullable", t1."Enum")
FROM
	"ValueConversion" t1

