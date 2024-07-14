BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3847_OutfeedTransportOrder"
(
	"Id" uuid NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
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
						('bb0a8dd1-3255-42ad-9e15-a23ecf76422a'::uuid,'2024-07-14 19:10:31.054'::timestamp),
						('f6f4ab90-4083-4c15-b168-41122e29de66'::uuid,'2024-07-14 19:10:31.055'::timestamp),
						('c3631a39-4514-4f73-ad63-a60672131608'::uuid,'2024-07-14 19:10:31.055'::timestamp)
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
						('bcfe0002-8eac-4836-9abd-b5832790f039'::uuid,'2024-07-14 19:10:31.055'::timestamp),
						('cb5a5795-243f-49f9-89d6-8cfca2f35c59'::uuid,'2024-07-14 19:10:31.055'::timestamp)
					) t2("Key", "Value")
				WHERE
					t2."Key" = outfeed."Id"
				LIMIT 1
			) as "Value_1_1"
		FROM
			"Test3847_OutfeedTransportOrder" outfeed
	) t3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

