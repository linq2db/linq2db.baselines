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
					('bbb67b34-a65d-4e1a-a8a9-e71636183b89'::uuid,'2024-01-26 09:57:57.863'::timestamp),
					('3725e7ca-5739-43ef-8eff-9559e618952c'::uuid,'2024-01-26 09:57:57.864'::timestamp),
					('44939c43-cc13-48cd-a803-da0b284dbd31'::uuid,'2024-01-26 09:57:57.864'::timestamp)
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
					('4d72ae48-0338-43f4-adf3-1f192248c1b2'::uuid,'2024-01-26 09:57:57.864'::timestamp),
					('cbce3042-83ae-4b71-b781-f1b55cb2c78a'::uuid,'2024-01-26 09:57:57.864'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

