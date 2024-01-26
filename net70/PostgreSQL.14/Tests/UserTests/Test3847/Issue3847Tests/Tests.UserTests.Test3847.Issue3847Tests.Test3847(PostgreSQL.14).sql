BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3847_OutfeedTransportOrder"
(
	"Id" uuid NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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
					('2f930168-f24d-4dd1-8904-a03461500a38'::uuid,'2024-01-26 10:00:59.795'::timestamp),
					('9477a33f-c92c-4b75-96db-58152ae62b2c'::uuid,'2024-01-26 10:00:59.797'::timestamp),
					('78ce2a48-1c40-4ca4-be70-3a67026341e3'::uuid,'2024-01-26 10:00:59.797'::timestamp)
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
					('fda8c6aa-1606-435e-8cb6-4063bfee8898'::uuid,'2024-01-26 10:00:59.797'::timestamp),
					('d6199cff-f6fe-4ff1-bec9-00267f1b8cf1'::uuid,'2024-01-26 10:00:59.797'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

