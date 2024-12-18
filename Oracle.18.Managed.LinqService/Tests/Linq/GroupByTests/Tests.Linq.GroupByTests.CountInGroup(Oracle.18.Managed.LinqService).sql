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
	t7."Key_1",
	t7.COUNT_1,
	t7.COUNT_2,
	t7.COUNT_3,
	t7.COUNT_4,
	t1.COUNT_1,
	t3.COUNT_1,
	t4.COUNT_1,
	t7.COUNT_5,
	t6.COUNT_1
FROM
	(
		SELECT
			t."GroupId" as "Key_1",
			COUNT(*) as COUNT_1,
			COUNT(CASE
				WHEN MOD(t."DataValue", 2) = 0D AND MOD(t."DataValue", 2) IS NOT NULL
					THEN 1
				ELSE NULL
			END) as COUNT_2,
			COUNT(*) as COUNT_3,
			COUNT(DISTINCT t."DataValue") as COUNT_4,
			COUNT(CASE
				WHEN MOD(t."DataValue", 2) = 0D AND MOD(t."DataValue", 2) IS NOT NULL
					THEN 1
				ELSE NULL
			END) as COUNT_5
		FROM
			"AggregationData" t
		WHERE
			t."DataValue" IS NOT NULL
		GROUP BY
			t."GroupId"
	) t7
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
						x."DataValue" IS NOT NULL AND t7."Key_1" = x."GroupId"
				) x_1
			WHERE
				MOD(x_1."DataValue", 2) = 0D AND MOD(x_1."DataValue", 2) IS NOT NULL
		) t1
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
						t_1."DataValue" IS NOT NULL AND
						t7."Key_1" = t_1."GroupId" AND
						MOD(t_1."DataValue", 2) = 0D AND
						MOD(t_1."DataValue", 2) IS NOT NULL
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
						x_2."DataValue" IS NOT NULL AND
						t7."Key_1" = x_2."GroupId" AND
						MOD(x_2."DataValue", 2) = 0D AND
						MOD(x_2."DataValue", 2) IS NOT NULL
				) x_3
			WHERE
				MOD(x_3."DataValue", 2) = 0D AND MOD(x_3."DataValue", 2) IS NOT NULL
		) t4
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT DISTINCT
						t_2."DataValue"
					FROM
						"AggregationData" t_2
					WHERE
						t_2."DataValue" IS NOT NULL AND
						t7."Key_1" = t_2."GroupId" AND
						MOD(t_2."DataValue", 2) = 0D AND
						MOD(t_2."DataValue", 2) IS NOT NULL
				) t5
		) t6

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

