﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" IS NULL
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Text(4) -- String
SET     @p = 'John'

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" = :p AND p."FirstName" IS NOT NULL
LIMIT 1

