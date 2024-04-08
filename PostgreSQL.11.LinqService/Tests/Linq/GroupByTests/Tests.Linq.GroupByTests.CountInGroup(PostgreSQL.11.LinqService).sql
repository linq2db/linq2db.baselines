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
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 3

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 5

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 6

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 8

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 9

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 11

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 13

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 18

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	:GroupId,
	:DataValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."GroupId",
	COUNT(*),
	COUNT(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT g_1."DataValue"),
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
					x."DataValue" IS NOT NULL AND g_1."GroupId" = x."GroupId"
			) x_1
		WHERE
			(x_1."DataValue"::decimal % 2)::decimal = 0
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					t."DataValue"
				FROM
					"AggregationData" t
				WHERE
					t."DataValue" IS NOT NULL AND g_1."GroupId" = t."GroupId" AND
					(t."DataValue"::decimal % 2)::decimal = 0
			) t1
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
					x_2."DataValue" IS NOT NULL AND g_1."GroupId" = x_2."GroupId" AND
					(x_2."DataValue"::decimal % 2)::decimal = 0
			) x_3
		WHERE
			(x_3."DataValue"::decimal % 2)::decimal = 0
	),
	COUNT(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN 1
		ELSE NULL
	END),
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
					t_1."DataValue" IS NOT NULL AND g_1."GroupId" = t_1."GroupId" AND
					(t_1."DataValue"::decimal % 2)::decimal = 0
			) t2
	)
FROM
	"AggregationData" g_1
WHERE
	g_1."DataValue" IS NOT NULL
GROUP BY
	g_1."GroupId"

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

