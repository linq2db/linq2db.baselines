BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "DistinctOrderByTable"
		(
			"Id" Int          NOT NULL,
			F1   Int          NOT NULL,
			F2   VarChar(255)     NULL,

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "DistinctOrderByTable" ("Id", F1, F2) VALUES (8,8,'8')
	INTO "DistinctOrderByTable" ("Id", F1, F2) VALUES (3,3,'3')
	INTO "DistinctOrderByTable" ("Id", F1, F2) VALUES (2,2,'2')
	INTO "DistinctOrderByTable" ("Id", F1, F2) VALUES (6,3,'3')
	INTO "DistinctOrderByTable" ("Id", F1, F2) VALUES (1,3,'3')
	INTO "DistinctOrderByTable" ("Id", F1, F2) VALUES (5,5,'5')
	INTO "DistinctOrderByTable" ("Id", F1, F2) VALUES (7,2,'2')
	INTO "DistinctOrderByTable" ("Id", F1, F2) VALUES (4,4,'4')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	t2.F2
FROM
	(
		SELECT DISTINCT
			t1.F1,
			t1.F2
		FROM
			"DistinctOrderByTable" t1
		ORDER BY
			t1.F1 DESC
	) t2
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

