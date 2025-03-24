﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL
DECLARE @value Integer -- Int32
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

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableWithIdentity" t1
LIMIT 2

