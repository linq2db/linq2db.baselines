﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(p2."PersonID" * 2) / :Length,
	p2."FirstName"
FROM
	"Person" p2

