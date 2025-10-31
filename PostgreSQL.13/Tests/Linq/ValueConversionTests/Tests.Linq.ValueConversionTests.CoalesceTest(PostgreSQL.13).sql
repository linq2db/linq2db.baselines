-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Coalesce(t1."EnumNullable", t1."Enum")
FROM
	"ValueConversion" t1

