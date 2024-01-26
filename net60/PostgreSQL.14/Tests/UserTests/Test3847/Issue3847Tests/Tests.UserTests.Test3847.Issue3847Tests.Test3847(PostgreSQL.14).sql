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
					('ca8c0045-51ff-46e4-8d06-fc242fcd0d8d'::uuid,'2024-01-26 09:57:38.094'::timestamp),
					('29b27fc3-de05-45e9-9001-ffca65831376'::uuid,'2024-01-26 09:57:38.096'::timestamp),
					('38d5fdaf-6427-4d1a-bf59-736b29770ffb'::uuid,'2024-01-26 09:57:38.096'::timestamp)
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
					('50244937-2856-4247-b83c-ac1f43a1950b'::uuid,'2024-01-26 09:57:38.096'::timestamp),
					('27d42db3-b247-4c0b-94ad-84fb51029be9'::uuid,'2024-01-26 09:57:38.096'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

