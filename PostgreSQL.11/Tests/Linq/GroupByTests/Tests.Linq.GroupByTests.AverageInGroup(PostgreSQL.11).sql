BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AggregationData"
(
	"GroupId"   Int   NOT NULL,
	"DataValue" Float     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."GroupId",
	AVG(t."DataValue"),
	AVG(t."DataValue"),
	AVG(CASE
		WHEN (t."DataValue"::decimal % 2)::decimal = 0 THEN t."DataValue"
		ELSE NULL
	END),
	AVG(CASE
		WHEN (t."DataValue"::decimal % 2)::decimal = 0 THEN t."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT t."DataValue")::decimal,
	AVG(DISTINCT CASE
		WHEN (t."DataValue"::decimal % 2)::decimal = 0 THEN t."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN (t."DataValue"::decimal % 2)::decimal = 0 THEN t."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" t
WHERE
	t."DataValue" IS NOT NULL
GROUP BY
	t."GroupId"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

