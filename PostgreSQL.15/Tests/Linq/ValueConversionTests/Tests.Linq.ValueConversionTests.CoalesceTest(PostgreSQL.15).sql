-- PostgreSQL.15 PostgreSQL12

SELECT
	Coalesce(t1."EnumNullable", t1."Enum")
FROM
	"ValueConversion" t1

