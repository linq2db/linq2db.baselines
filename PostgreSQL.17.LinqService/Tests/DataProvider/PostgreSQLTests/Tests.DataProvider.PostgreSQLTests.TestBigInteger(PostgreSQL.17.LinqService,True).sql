﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "BigIntegerTable"
(
	"Id",
	"Value1",
	"Value2"
)
VALUES
(
	1,
	-12345678901234567890123456789012345678901234567890,
	-22345678901234567890123456789012345678901234567890
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2"
FROM
	"BigIntegerTable" t1
ORDER BY
	t1."Id"

