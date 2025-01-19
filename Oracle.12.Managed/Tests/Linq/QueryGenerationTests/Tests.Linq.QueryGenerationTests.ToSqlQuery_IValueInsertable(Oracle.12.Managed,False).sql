BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 123

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	:value
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TableWithIdentity" t1
FETCH NEXT 2 ROWS ONLY

