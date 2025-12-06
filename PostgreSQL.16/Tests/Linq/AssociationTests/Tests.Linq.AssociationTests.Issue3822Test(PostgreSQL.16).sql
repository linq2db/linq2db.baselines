-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Dog" x
		INNER JOIN "Human" "a_Owner" ON x."OwnerId" = "a_Owner"."Id"
		INNER JOIN "House" "a_House" ON "a_Owner"."HouseId" = "a_House"."Id"
		LEFT JOIN (
			SELECT
				"a_WindowAtPosition"."Id"
			FROM
				"Window" "a_WindowAtPosition"
			WHERE
				"a_WindowAtPosition"."Position" = 6
			LIMIT 1
		) t1 ON 1=1
LIMIT 1

