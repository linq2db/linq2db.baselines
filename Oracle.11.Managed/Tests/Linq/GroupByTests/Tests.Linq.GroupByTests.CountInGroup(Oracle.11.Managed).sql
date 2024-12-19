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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

