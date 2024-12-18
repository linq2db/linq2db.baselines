BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	g_1."GroupId",
	SUM(g_1."DataValue"),
	SUM(g_1."DataValue"),
	SUM(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D AND g_1."DataValue" IS NOT NULL
			THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D AND g_1."DataValue" IS NOT NULL
			THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT g_1."DataValue"),
	SUM(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D AND g_1."DataValue" IS NOT NULL
			THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D AND g_1."DataValue" IS NOT NULL
			THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

