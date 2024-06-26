﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @nameToCheck Varchar2(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @nameToCheck Varchar2(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @nameToCheck Varchar2(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @nameToCheck Varchar2(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

