-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."OtherId",
	"a_Association"."Id"
FROM
	"GuidConvertedOwner" t1
		LEFT JOIN "GuidConvertedTarget" "a_Association" ON t1."OtherId" = "a_Association"."Id"::text

