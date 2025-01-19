BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"TableWithIdentity" t1
SET
	"Value" = 123

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TableWithIdentity" t1
FETCH NEXT 2 ROWS ONLY

