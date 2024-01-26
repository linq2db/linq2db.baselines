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
					('9800ac32-395b-4e0a-b865-8f28f36f1455'::uuid,'2024-01-26 09:49:33.372'::timestamp),
					('fde37e3a-2fcf-48b5-b4b1-e89c5751d725'::uuid,'2024-01-26 09:49:33.374'::timestamp),
					('7ddfeca7-871d-4791-b259-c83fbbb00f62'::uuid,'2024-01-26 09:49:33.374'::timestamp)
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
					('681ab05b-c5cf-4c46-8d58-74448e01ee69'::uuid,'2024-01-26 09:49:33.374'::timestamp),
					('c862236a-75d8-4ffb-83af-d82390ef49f5'::uuid,'2024-01-26 09:49:33.374'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

