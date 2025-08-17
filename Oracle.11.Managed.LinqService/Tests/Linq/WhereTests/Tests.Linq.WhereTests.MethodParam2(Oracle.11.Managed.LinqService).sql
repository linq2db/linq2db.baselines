BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

