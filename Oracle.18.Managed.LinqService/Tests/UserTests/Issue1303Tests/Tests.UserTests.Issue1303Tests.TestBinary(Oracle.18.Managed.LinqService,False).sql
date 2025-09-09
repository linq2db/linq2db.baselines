BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1.ID,
	t1."Array" as "Array_1",
	t1."Binary" as "Binary_1"
FROM
	"Issue1303" t1
WHERE
	t1."Binary" = HEXTORAW('0405')
FETCH NEXT 2 ROWS ONLY

