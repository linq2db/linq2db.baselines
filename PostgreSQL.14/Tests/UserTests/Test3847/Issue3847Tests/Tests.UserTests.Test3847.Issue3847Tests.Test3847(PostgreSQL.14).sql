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
						('eefadea7-1103-49fd-9c00-90a268a29961'::uuid,'2024-07-14 19:12:56.196'::timestamp),
						('dff6211b-35d6-43e9-9239-ab4e3a950f7f'::uuid,'2024-07-14 19:12:56.197'::timestamp),
						('6df44b14-5a6e-45f7-8ba0-194e97e7b489'::uuid,'2024-07-14 19:12:56.197'::timestamp)
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
						('14223d6f-5a9c-4ed3-8376-58c7679b479c'::uuid,'2024-07-14 19:12:56.197'::timestamp),
						('69b1b31b-ec52-41b2-8b2a-def952fedd4e'::uuid,'2024-07-14 19:12:56.197'::timestamp)
					) t2("Key", "Value")
				WHERE
					t2."Key" = outfeed."Id"
				LIMIT 1
			) as "Value_1_1"
		FROM
			"Test3847_OutfeedTransportOrder" outfeed
	) t3

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

