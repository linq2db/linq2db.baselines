BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3847_OutfeedTransportOrder"
(
	"Id" uuid NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

SELECT
	outfeed."Id",
	t1."LastCheck",
	t2."NextCheck"
FROM
	"Test3847_OutfeedTransportOrder" outfeed
		LEFT JOIN LATERAL (
			SELECT
				x."Value" as "LastCheck"
			FROM
				(VALUES
					('c655fc29-549b-40ae-8e7f-c2510176bbee'::uuid,'2024-01-26 09:51:55.425'::timestamp),
					('ebc2b3d9-c18c-4594-bb49-344a3e11245d'::uuid,'2024-01-26 09:51:55.426'::timestamp),
					('1f6fbd05-5ee2-49bf-964d-e8043c86355c'::uuid,'2024-01-26 09:51:55.426'::timestamp)
				) x("Key", "Value")
			WHERE
				x."Key" = outfeed."Id"
			LIMIT :take
		) t1 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				x_1."Value" as "NextCheck"
			FROM
				(VALUES
					('820fc983-43c2-4d57-afcb-e30ea830a6ac'::uuid,'2024-01-26 09:51:55.426'::timestamp),
					('cd07894c-1e10-41d0-8ebc-cb3149131a76'::uuid,'2024-01-26 09:51:55.426'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

