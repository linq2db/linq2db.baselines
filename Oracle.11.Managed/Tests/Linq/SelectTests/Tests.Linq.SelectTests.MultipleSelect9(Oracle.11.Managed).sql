﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(p5."PersonID" * :Length) / 2,
	p5."FirstName"
FROM
	"Person" p5

