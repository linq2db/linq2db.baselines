BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
VALUES
(
	543,
	123
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TableWithIdentity" t1
FETCH NEXT 2 ROWS ONLY

