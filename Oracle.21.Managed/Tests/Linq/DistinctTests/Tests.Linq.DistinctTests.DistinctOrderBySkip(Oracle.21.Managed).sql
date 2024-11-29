BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
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
		CREATE TABLE "DistinctOrderByTable"
		(
			"Id" Int          NOT NULL,
			F1   Int          NOT NULL,
			F2   VarChar(255)     NULL,
			F3   Int          NOT NULL,

			CONSTRAINT "PK_DistinctOrderByTable" PRIMARY KEY ("Id")
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
	INTO "DistinctOrderByTable" ("Id", F1, F2, F3) VALUES (8,8,'8',5)
	INTO "DistinctOrderByTable" ("Id", F1, F2, F3) VALUES (3,3,'3',3)
	INTO "DistinctOrderByTable" ("Id", F1, F2, F3) VALUES (2,2,'2',1)
	INTO "DistinctOrderByTable" ("Id", F1, F2, F3) VALUES (6,3,'3',4)
	INTO "DistinctOrderByTable" ("Id", F1, F2, F3) VALUES (1,3,'3',7)
	INTO "DistinctOrderByTable" ("Id", F1, F2, F3) VALUES (5,5,'5',2)
	INTO "DistinctOrderByTable" ("Id", F1, F2, F3) VALUES (7,2,'2',8)
	INTO "DistinctOrderByTable" ("Id", F1, F2, F3) VALUES (4,4,'4',6)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 2

SELECT
	t2.F2
FROM
	(
		SELECT DISTINCT
			t1.F1,
			t1.F2
		FROM
			"DistinctOrderByTable" t1
	) t2
ORDER BY
	t2.F1 DESC
OFFSET :skip ROWS

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

