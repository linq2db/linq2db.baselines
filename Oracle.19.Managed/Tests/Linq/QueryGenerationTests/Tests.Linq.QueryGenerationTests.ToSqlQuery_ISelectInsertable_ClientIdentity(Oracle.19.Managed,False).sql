-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO "TableWithIdentitySrc"
(
	"Value"
)
VALUES
(
	:Value
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @addition Int32
SET     @addition = 123

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
SELECT
	345,
	t1."Value" + :addition
FROM
	"TableWithIdentitySrc" t1

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1

