BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
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
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 5

SELECT
	t4.F2
FROM
	(
		SELECT DISTINCT
			t3.F1,
			t3.F2
		FROM
			(
				SELECT
					t2.F1,
					t2.F2
				FROM
					(
						SELECT
							t1.F1,
							t1.F2
						FROM
							"DistinctOrderByTable" t1
						ORDER BY
							t1.F3 DESC
					) t2
				WHERE
					ROWNUM <= :take
			) t3
	) t4

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DistinctOrderByTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

