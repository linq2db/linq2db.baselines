BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1303"';
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
-- Oracle.11.Managed Oracle11
DECLARE @Array Raw(3) -- Binary
SET     @Array = HEXTORAW('010203')
DECLARE @Binary Raw(2) -- Binary
SET     @Binary = HEXTORAW('0405')

INSERT INTO "Issue1303"
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	:Array,
	:Binary
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1.ID = 1 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Array Raw(3) -- Binary
SET     @Array = HEXTORAW('010203')

SELECT
	t1.ID,
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Array" = :Array AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Binary Raw(2) -- Binary
SET     @Binary = HEXTORAW('0405')

SELECT
	t1.ID,
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Binary" = :Binary AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1303"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

