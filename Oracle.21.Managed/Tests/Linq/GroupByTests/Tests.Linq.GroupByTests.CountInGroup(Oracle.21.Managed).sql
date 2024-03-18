﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "AggregationData"
		(
			"GroupId"   Int   NOT NULL,
			"DataValue" Float     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (1,1D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (1,NULL)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (1,3D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (1,1D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (1,5D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (1,6D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (2,7D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (2,8D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (2,9D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (2,NULL)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (2,11D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (2,7D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (3,13D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (3,16D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (3,16D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (3,16D)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (3,NULL)
	INTO "AggregationData" ("GroupId", "DataValue") VALUES (3,18D)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	g_2."GroupId",
	g_2.COUNT_1,
	g_2.COUNT_2,
	g_2.COUNT_3,
	g_2.COUNT_4,
	t1.COUNT_1,
	t3.COUNT_1,
	t4.COUNT_1,
	g_2.COUNT_5,
	t6.COUNT_1
FROM
	(
		SELECT
			g_1."GroupId",
			COUNT(*) as COUNT_1,
			COUNT(CASE
				WHEN MOD(g_1."DataValue", 2) = 0D
					THEN 1
				ELSE NULL
			END) as COUNT_2,
			COUNT(*) as COUNT_3,
			COUNT(DISTINCT g_1."DataValue") as COUNT_4,
			COUNT(CASE
				WHEN MOD(g_1."DataValue", 2) = 0D
					THEN 1
				ELSE NULL
			END) as COUNT_5
		FROM
			"AggregationData" g_1
		WHERE
			g_1."DataValue" IS NOT NULL
		GROUP BY
			g_1."GroupId"
	) g_2
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						x."DataValue"
					FROM
						"AggregationData" x
					WHERE
						x."DataValue" IS NOT NULL AND g_2."GroupId" = x."GroupId"
				) x_1
			WHERE
				MOD(x_1."DataValue", 2) = 0D
		) t1
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						t."DataValue"
					FROM
						"AggregationData" t
					WHERE
						t."DataValue" IS NOT NULL AND g_2."GroupId" = t."GroupId" AND
						MOD(t."DataValue", 2) = 0D
				) t2
		) t3
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						x_2."DataValue"
					FROM
						"AggregationData" x_2
					WHERE
						x_2."DataValue" IS NOT NULL AND g_2."GroupId" = x_2."GroupId" AND
						MOD(x_2."DataValue", 2) = 0D
				) x_3
			WHERE
				MOD(x_3."DataValue", 2) = 0D
		) t4
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						t_1."DataValue"
					FROM
						"AggregationData" t_1
					WHERE
						t_1."DataValue" IS NOT NULL AND g_2."GroupId" = t_1."GroupId" AND
						MOD(t_1."DataValue", 2) = 0D
				) t5
		) t6

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

