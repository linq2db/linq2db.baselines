BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	"a_Child"."ID"
FROM
	"ExtensionTable1" r
		INNER JOIN "ExtensionTable2" "a_Child" ON r."FK" = "a_Child"."ID"

