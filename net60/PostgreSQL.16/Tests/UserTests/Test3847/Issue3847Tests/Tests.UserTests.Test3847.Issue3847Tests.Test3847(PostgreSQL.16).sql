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
					('4d0ec135-7b52-499c-a548-6394a99ffba4'::uuid,'2024-01-26 09:54:35.408'::timestamp),
					('4d63c72b-067d-4083-9a14-17ff7d7641d1'::uuid,'2024-01-26 09:54:35.410'::timestamp),
					('41c81649-19a7-4893-a31d-5338621382d3'::uuid,'2024-01-26 09:54:35.410'::timestamp)
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
					('b996a22d-2c08-400b-b16c-d37ac41ba21d'::uuid,'2024-01-26 09:54:35.410'::timestamp),
					('7631c958-e34d-416e-809b-45b86fcad147'::uuid,'2024-01-26 09:54:35.410'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

