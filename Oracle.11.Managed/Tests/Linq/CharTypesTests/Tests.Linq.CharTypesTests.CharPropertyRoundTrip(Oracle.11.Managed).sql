-- Oracle.11.Managed Oracle11
DECLARE @CharFld Char -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "CharFieldRecord"
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
	"CharFieldRecord" t1
WHERE
	ROWNUM <= 1

