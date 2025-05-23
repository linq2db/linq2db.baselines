﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	t1."Value" + 123
FROM
	"TableWithIdentitySrc" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1

