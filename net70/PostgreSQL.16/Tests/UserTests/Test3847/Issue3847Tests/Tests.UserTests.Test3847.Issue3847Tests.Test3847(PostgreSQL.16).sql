BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3847_OutfeedTransportOrder"
(
	"Id" uuid NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
					('93a866f6-cfe5-45fd-9465-e5c85d703e01'::uuid,'2024-01-26 09:57:41.377'::timestamp),
					('03ab8684-cadb-4ec6-8d76-9c057ddfca4d'::uuid,'2024-01-26 09:57:41.378'::timestamp),
					('b2b6d2f8-73d9-4428-8bb6-ec31bf1d0de6'::uuid,'2024-01-26 09:57:41.378'::timestamp)
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
					('f0372235-1f33-44a8-92af-248a311feec9'::uuid,'2024-01-26 09:57:41.378'::timestamp),
					('0b8c91dd-6bcc-4fa4-8a59-22991f766a31'::uuid,'2024-01-26 09:57:41.378'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

