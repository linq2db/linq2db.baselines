BeforeExecute
-- Oracle.11.Managed Oracle11

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

SELECT
	t1.ID,
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Array" = HEXTORAW('010203') AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Binary" = HEXTORAW('0405') AND ROWNUM <= 2

