-- Oracle.11.Managed Oracle11
DECLARE @value Int32
SET     @value = 123

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
VALUES
(
	543,
	:value
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
WHERE
	ROWNUM <= 2

