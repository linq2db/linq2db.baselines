-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

UPDATE
	"TableWithIdentity" t1
SET
	"Value" = 123

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
WHERE
	ROWNUM <= 2

