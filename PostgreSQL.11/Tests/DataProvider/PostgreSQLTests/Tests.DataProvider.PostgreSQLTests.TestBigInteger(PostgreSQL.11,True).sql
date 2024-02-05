﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "BigIntegerTable"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "BigIntegerTable"
(
	"Id"     Int         NOT NULL,
	"Value1" decimal(78) NOT NULL,
	"Value2" decimal(78)     NULL,

	CONSTRAINT "PK_BigIntegerTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
INSERT BULK "BigIntegerTable"(Id, Value1, Value2)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2"
FROM
	"BigIntegerTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "BigIntegerTable"

