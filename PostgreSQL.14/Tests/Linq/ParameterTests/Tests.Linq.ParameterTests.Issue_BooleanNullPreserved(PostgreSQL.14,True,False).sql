﻿BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	True
)

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = NOT "TestBool"."Value"

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = True

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

