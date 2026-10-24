-- PostgreSQL.9.3 PostgreSQL
SELECT
	Coalesce(t1."EnumNullable", t1."Enum")
FROM
	"ValueConversion" t1

