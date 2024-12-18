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
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 1D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue BinaryDouble -- Double
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 3D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 1D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 5D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 6D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 7D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 8D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 9D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue BinaryDouble -- Double
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 11D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 7D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 13D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 16D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 16D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 16D

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue BinaryDouble -- Double
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue BinaryDouble -- Double
SET     @DataValue = 18D

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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	g_1."GroupId",
	MAX(g_1."DataValue"),
	MAX(g_1."DataValue"),
	MAX(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D AND MOD(g_1."DataValue", 2) IS NOT NULL
			THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D AND MOD(g_1."DataValue", 2) IS NOT NULL
			THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT g_1."DataValue"),
	MAX(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D AND MOD(g_1."DataValue", 2) IS NOT NULL
			THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D AND MOD(g_1."DataValue", 2) IS NOT NULL
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

