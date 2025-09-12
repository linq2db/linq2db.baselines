BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "tmptbl1"
		(
			ID      Int          NOT NULL,
			"Value" VarChar(255)     NULL,

			CONSTRAINT "PK_tmptbl1" PRIMARY KEY (ID)
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "tmptbl1" (ID, "Value") VALUES (1,'Value1')
	INTO "tmptbl1" (ID, "Value") VALUES (2,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "tmptbl2"
		(
			ID      Int          NOT NULL,
			"Value" VarChar(255) NOT NULL,

			CONSTRAINT "PK_tmptbl2" PRIMARY KEY (ID)
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "tmptbl2" (ID, "Value") VALUES (1,'Value1')
	INTO "tmptbl2" (ID, "Value") VALUES (3,'Value2')
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE GLOBAL TEMPORARY TABLE "tmptbl3"
		(
			ID      Int          NOT NULL,
			"Value" VarChar(255)     NULL,

			CONSTRAINT "PK_tmptbl3" PRIMARY KEY (ID)
		)
		ON COMMIT PRESERVE ROWS
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "tmptbl3" (ID, "Value") VALUES (1,'Value1')
	INTO "tmptbl3" (ID, "Value") VALUES (2,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t4.ID,
	t4."Value"
FROM
	"tmptbl1" t2
		LEFT JOIN "tmptbl2" t3 ON t2.ID = t3.ID
		LEFT JOIN "tmptbl3" t4 ON Coalesce(t3."Value", t2."Value") = t4."Value" OR t3."Value" IS NULL AND t2."Value" IS NULL AND t4."Value" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	"tmptbl1" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	"tmptbl2" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	"tmptbl3" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "tmptbl3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "tmptbl2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "tmptbl1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

