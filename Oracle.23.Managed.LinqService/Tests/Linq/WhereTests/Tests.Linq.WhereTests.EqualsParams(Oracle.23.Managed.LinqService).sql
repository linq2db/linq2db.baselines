﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1
DECLARE @name Varchar2(4) -- String
SET     @name = 'John'

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :id AND p."FirstName" = :name

