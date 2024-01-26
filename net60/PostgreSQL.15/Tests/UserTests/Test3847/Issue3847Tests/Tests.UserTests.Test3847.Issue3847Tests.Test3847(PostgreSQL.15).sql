BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3847_OutfeedTransportOrder"
(
	"Id" uuid NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
					('db8e6788-6d76-4dd7-9552-4d6987dc7f8f'::uuid,'2024-01-26 09:55:01.385'::timestamp),
					('c95c38d5-3229-4b19-971e-a160e2569057'::uuid,'2024-01-26 09:55:01.387'::timestamp),
					('ca785032-9287-4914-9fa0-14f498facf4c'::uuid,'2024-01-26 09:55:01.387'::timestamp)
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
					('1dd820af-c34d-41bf-9c05-0465a1af9b59'::uuid,'2024-01-26 09:55:01.387'::timestamp),
					('648cb628-5361-49db-8d42-7798f49a5a0a'::uuid,'2024-01-26 09:55:01.387'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

