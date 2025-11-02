-- Oracle.11.Managed Oracle11
DECLARE @CharFld Char -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
(
	"CharFld"
)
VALUES
(
	:CharFld
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."CharFld"
FROM
	"Issue1279Table" t1
WHERE
	ROWNUM <= 1

