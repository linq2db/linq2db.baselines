﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij Integer -- Int32
SET     @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij = 1

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = :abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij

