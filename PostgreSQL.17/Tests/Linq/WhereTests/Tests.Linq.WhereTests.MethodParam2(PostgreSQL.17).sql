﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

