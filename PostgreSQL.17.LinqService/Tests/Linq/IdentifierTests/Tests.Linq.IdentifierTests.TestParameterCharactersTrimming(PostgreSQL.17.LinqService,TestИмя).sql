﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	testparams
SET
	"TestИмя" = :Test
WHERE
	testparams."TestИмя" = 1

