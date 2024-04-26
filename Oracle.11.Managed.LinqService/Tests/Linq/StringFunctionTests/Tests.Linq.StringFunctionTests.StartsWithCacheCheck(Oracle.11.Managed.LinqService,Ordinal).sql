﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @nameToCheck Varchar2(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @nameToCheck Varchar2(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @nameToCheck Varchar2(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @nameToCheck Varchar2(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

