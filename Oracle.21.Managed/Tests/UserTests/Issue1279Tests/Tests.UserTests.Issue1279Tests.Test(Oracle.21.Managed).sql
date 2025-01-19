BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
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

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."CharFld"
FROM
	"Issue1279Table" t1
FETCH NEXT 1 ROWS ONLY

