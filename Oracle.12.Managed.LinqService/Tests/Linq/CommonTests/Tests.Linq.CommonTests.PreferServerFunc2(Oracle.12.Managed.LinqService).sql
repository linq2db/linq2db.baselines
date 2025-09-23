BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Length Int32
SET     @Length = 0

SELECT
	Length(p."FirstName") + :Length
FROM
	"Person" p

