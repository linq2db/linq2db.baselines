﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id"
FROM
	"TransactionLine" t1
WHERE
	t1."Id" = 2 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id"
FROM
	"TransactionLine" t1
WHERE
	t1."Id" = 2 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @UserId Int32
SET     @UserId = 2

SELECT
	x."Id"
FROM
	"TransactionLine" x
WHERE
	x."Id" = :UserId AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @UserId Int32
SET     @UserId = 2

SELECT
	x."Id"
FROM
	"TransactionLine" x
WHERE
	x."Id" = :UserId AND ROWNUM <= 2

