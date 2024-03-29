﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Text(4) -- String
SET     @p = 'John'
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."FirstName" = :p
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Text(6) -- String
SET     @p = 'Tester'
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."FirstName" = :p
LIMIT :take

