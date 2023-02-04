BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "OutfeedTransportOrderDTO"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "OutfeedTransportOrderDTO"
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
	"OutfeedTransportOrderDTO" outfeed
		LEFT JOIN LATERAL (
			SELECT
				x."Value" as "LastCheck"
			FROM
				(VALUES
					('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,'2020-02-29 17:54:55'::timestamp)
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
					('a948600d-de21-4f74-8ac2-9516b287076e'::uuid,'2020-02-29 17:54:55'::timestamp)
				) x_1("Key", "Value")
			WHERE
				x_1."Key" = outfeed."Id"
			LIMIT :take_1
		) t2 ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "OutfeedTransportOrderDTO"

