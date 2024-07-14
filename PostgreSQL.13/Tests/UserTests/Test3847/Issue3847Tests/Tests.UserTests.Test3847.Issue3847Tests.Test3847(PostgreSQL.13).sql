BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3847_OutfeedTransportOrder"
(
	"Id" uuid NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
						('c5af66dd-50ba-4181-a7e8-c1bb38e048e5'::uuid,'2024-07-14 19:13:50.083'::timestamp),
						('4cd4523a-fb88-4a2f-8f03-c25c28e1e338'::uuid,'2024-07-14 19:13:50.084'::timestamp),
						('e46494ab-0201-49bf-82ff-e629f2dd9db7'::uuid,'2024-07-14 19:13:50.084'::timestamp)
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
						('65dfd16e-2828-49a6-93bb-185d3bfcc60e'::uuid,'2024-07-14 19:13:50.084'::timestamp),
						('824e26f1-f15f-47a8-8fb9-92158c690652'::uuid,'2024-07-14 19:13:50.084'::timestamp)
					) t2("Key", "Value")
				WHERE
					t2."Key" = outfeed."Id"
				LIMIT 1
			) as "Value_1_1"
		FROM
			"Test3847_OutfeedTransportOrder" outfeed
	) t3

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3847_OutfeedTransportOrder"

