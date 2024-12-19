BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1303"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1303"
		(
			ID       Int     NOT NULL,
			"Array"  Raw(10)     NULL,
			"Binary" Raw(10)     NULL,

			CONSTRAINT "PK_Issue1303" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "Issue1303"
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	HEXTORAW('010203'),
	HEXTORAW('0405')
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Array" as "Array_1",
	t1."Binary" as "Binary_1"
FROM
	"Issue1303" t1
WHERE
	t1.ID = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Array" as "Array_1",
	t1."Binary" as "Binary_1"
FROM
	"Issue1303" t1
WHERE
	t1."Array" = HEXTORAW('010203')
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Array" as "Array_1",
	t1."Binary" as "Binary_1"
FROM
	"Issue1303" t1
WHERE
	t1."Binary" = HEXTORAW('0405')
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1303"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

