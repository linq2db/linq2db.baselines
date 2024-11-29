BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Length Int32
SET     @Length = 0

SELECT
	Length(p."FirstName") + :Length
FROM
	"Person" p

