﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id"
FROM
	"TransactionLine" t1
WHERE
	t1."Id" = 2
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id"
FROM
	"TransactionLine" t1
WHERE
	t1."Id" = 2
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserId Integer -- Int32
SET     @UserId = 2

SELECT
	x."Id"
FROM
	"TransactionLine" x
WHERE
	x."Id" = :UserId
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserId Integer -- Int32
SET     @UserId = 2

SELECT
	x."Id"
FROM
	"TransactionLine" x
WHERE
	x."Id" = :UserId
LIMIT 2

