﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Length Integer -- Int32
SET     @Length = 2

SELECT
	(p2."PersonID" * 2) / :Length,
	p2."FirstName"
FROM
	"Person" p2

