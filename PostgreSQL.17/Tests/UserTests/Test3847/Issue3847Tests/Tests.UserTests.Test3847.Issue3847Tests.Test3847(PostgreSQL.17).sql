﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3847_OutfeedTransportOrder"
(
	"Id" uuid NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Timestamp -- DateTime2
SET     @p = NULL
DECLARE @p_1 Timestamp -- DateTime2
SET     @p_1 = NULL

SELECT
	t3."Id",
	CASE
		WHEN t3."Value_1" IS NOT NULL THEN t3."Value_1"
		ELSE :p
	END,
	CASE
		WHEN t3."Value_1_1" IS NOT NULL THEN t3."Value_1_1"
		ELSE :p_1
	END
FROM
	(
		SELECT
			outfeed."Id",
			(
				SELECT
					t1."Value"
				FROM
					(VALUES
						('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,'2020-02-29 17:54:55.123'::timestamp),
						('a948600d-de21-4f74-8ac2-9516b287076e'::uuid,'2020-02-29 17:54:55.123'::timestamp),
						('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid,'2020-02-29 17:54:55.123'::timestamp)
					) t1("Key", "Value")
				WHERE
					t1."Key" = outfeed."Id"
				LIMIT 1
			) as "Value_1",
			(
				SELECT
					t2."Value"
				FROM
					(VALUES
						('76b1c875-2287-4b82-a23b-7967c5eafed8'::uuid,'2020-02-29 17:54:55.123'::timestamp),
						('656606a4-6e36-4431-add6-85f886a1c7c2'::uuid,'2020-02-29 17:54:55.123'::timestamp)
					) t2("Key", "Value")
				WHERE
					t2."Key" = outfeed."Id"
				LIMIT 1
			) as "Value_1_1"
		FROM
			"Test3847_OutfeedTransportOrder" outfeed
	) t3

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

