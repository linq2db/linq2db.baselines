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
						('ad268853-d213-4367-a85b-93697c060b6d'::uuid,'2024-07-14 19:17:16.438'::timestamp),
						('915350f0-42f3-4a2c-b6b6-d9b84c966c54'::uuid,'2024-07-14 19:17:16.439'::timestamp),
						('fa4c0367-bafb-4554-8afc-a47f3fbabb67'::uuid,'2024-07-14 19:17:16.439'::timestamp)
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
						('13fa1f96-3657-4c50-bd68-5b1ba874504a'::uuid,'2024-07-14 19:17:16.439'::timestamp),
						('c81d028b-4439-40e3-983b-a51ac2bf1e3f'::uuid,'2024-07-14 19:17:16.439'::timestamp)
					) t2("Key", "Value")
				WHERE
					t2."Key" = outfeed."Id"
				LIMIT 1
			) as "Value_1_1"
		FROM
			"Test3847_OutfeedTransportOrder" outfeed
	) t3

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

