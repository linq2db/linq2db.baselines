BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

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
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."GroupId",
	d_1."DataValue"
FROM
	(
		SELECT DISTINCT
			t."GroupId"
		FROM
			"AggregationData" t
		WHERE
			t."DataValue" IS NOT NULL
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d."DataValue",
				d."GroupId"
			FROM
				"AggregationData" d
			WHERE
				d."DataValue" IS NOT NULL
		) d_1 ON m_1."GroupId" = d_1."GroupId"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."GroupId",
	d_1."DataValue"
FROM
	(
		SELECT DISTINCT
			t."GroupId"
		FROM
			"AggregationData" t
		WHERE
			t."DataValue" IS NOT NULL
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d."DataValue",
				d."GroupId"
			FROM
				"AggregationData" d
			WHERE
				d."DataValue" IS NOT NULL AND MOD(d."DataValue", 2) = 0D
		) d_1 ON m_1."GroupId" = d_1."GroupId"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."GroupId",
	d_1."DataValue"
FROM
	(
		SELECT DISTINCT
			t."GroupId"
		FROM
			"AggregationData" t
		WHERE
			t."DataValue" IS NOT NULL
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d."DataValue",
				d."GroupId"
			FROM
				"AggregationData" d
			WHERE
				d."DataValue" IS NOT NULL AND MOD(d."DataValue", 2) = 0D
		) d_1 ON m_1."GroupId" = d_1."GroupId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	g_1."GroupId",
	COUNT(*),
	COUNT(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT g_1."DataValue"),
	COUNT(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN 1
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
WHERE
	g_1."DataValue" IS NOT NULL
GROUP BY
	g_1."GroupId"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

