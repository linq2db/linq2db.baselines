BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "AggregationData"
(
	"GroupId"   Int   NOT NULL,
	"DataValue" Float     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(1,1),
(1,NULL),
(1,3),
(1,1),
(1,5),
(1,6),
(2,7),
(2,8),
(2,9),
(2,NULL),
(2,11),
(2,7),
(3,13),
(3,16),
(3,16),
(3,16),
(3,NULL),
(3,18)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Key_1",
	t1."COUNT_1",
	t1."COUNT_2",
	t1."COUNT_3",
	t1."COUNT_4",
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					x."DataValue"
				FROM
					"AggregationData" x
				WHERE
					x."DataValue" IS NOT NULL AND t1."Key_1" = x."GroupId"
			) x_1
		WHERE
			(x_1."DataValue"::decimal % 2)::decimal = 0 AND x_1."DataValue" IS NOT NULL
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					t_1."DataValue"
				FROM
					"AggregationData" t_1
				WHERE
					t_1."DataValue" IS NOT NULL AND
					t1."Key_1" = t_1."GroupId" AND
					(t_1."DataValue"::decimal % 2)::decimal = 0 AND
					t_1."DataValue" IS NOT NULL
			) t2
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					x_2."DataValue"
				FROM
					"AggregationData" x_2
				WHERE
					x_2."DataValue" IS NOT NULL AND
					t1."Key_1" = x_2."GroupId" AND
					(x_2."DataValue"::decimal % 2)::decimal = 0 AND
					x_2."DataValue" IS NOT NULL
			) x_3
		WHERE
			(x_3."DataValue"::decimal % 2)::decimal = 0 AND x_3."DataValue" IS NOT NULL
	),
	t1."COUNT_5",
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					t_2."DataValue"
				FROM
					"AggregationData" t_2
				WHERE
					t_2."DataValue" IS NOT NULL AND
					t1."Key_1" = t_2."GroupId" AND
					(t_2."DataValue"::decimal % 2)::decimal = 0 AND
					t_2."DataValue" IS NOT NULL
			) t3
	)
FROM
	(
		SELECT
			t."GroupId" as "Key_1",
			COUNT(*) as "COUNT_1",
			COUNT(CASE
				WHEN (t."DataValue"::decimal % 2)::decimal = 0 AND t."DataValue" IS NOT NULL
					THEN 1
				ELSE NULL
			END) as "COUNT_2",
			COUNT(*) as "COUNT_3",
			COUNT(DISTINCT t."DataValue") as "COUNT_4",
			COUNT(CASE
				WHEN (t."DataValue"::decimal % 2)::decimal = 0 AND t."DataValue" IS NOT NULL
					THEN 1
				ELSE NULL
			END) as "COUNT_5"
		FROM
			"AggregationData" t
		WHERE
			t."DataValue" IS NOT NULL
		GROUP BY
			t."GroupId"
	) t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

