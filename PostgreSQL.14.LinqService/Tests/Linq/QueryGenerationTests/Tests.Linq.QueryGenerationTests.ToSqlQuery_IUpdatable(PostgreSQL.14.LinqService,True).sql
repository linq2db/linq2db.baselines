﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"TableWithIdentity"
SET
	"Value" = 123

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

