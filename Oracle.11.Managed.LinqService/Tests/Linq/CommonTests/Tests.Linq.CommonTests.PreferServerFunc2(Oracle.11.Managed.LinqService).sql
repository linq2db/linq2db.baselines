BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Length Int32
SET     @Length = 0

SELECT
	Length(p."FirstName") + :Length
FROM
	"Person" p

