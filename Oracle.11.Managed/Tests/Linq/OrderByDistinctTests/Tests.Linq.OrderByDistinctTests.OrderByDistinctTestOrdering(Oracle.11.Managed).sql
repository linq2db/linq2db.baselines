BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
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
		CREATE TABLE "OrderByDistinctData"
		(
			"Id"            Int          NOT NULL,
			"DuplicateData" VarChar(255)     NULL,
			"OrderData1"    Int          NOT NULL,
			"OrderData2"    Int          NOT NULL,

			CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
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
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (1,'One',1,1)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (10,'Two',1,1)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (100,'Three',1,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
				ORDER BY
					x."OrderData1"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
				ORDER BY
					x."OrderData1" DESC
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
				ORDER BY
					x."OrderData1",
					x."OrderData2"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
				ORDER BY
					x."OrderData1",
					x."OrderData2" DESC
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
				ORDER BY
					x."OrderData1" DESC,
					x."OrderData2" DESC
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."DuplicateData"
FROM
	(
		SELECT
			t1."DuplicateData",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."DuplicateData"
				FROM
					"OrderByDistinctData" x
				ORDER BY
					x."OrderData1",
					x."OrderData2" DESC
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

