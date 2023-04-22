BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @nameToCheck_1 Varchar2(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck_1 ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @nameToCheck_1 Varchar2(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck_1 ESCAPE '~' AND
	p."PersonID" = 1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @nameToCheck_1 Varchar2(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck_1 ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @nameToCheck_1 Varchar2(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck_1 ESCAPE '~' AND
	p."PersonID" = 1

