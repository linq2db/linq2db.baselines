BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

SELECT
	Length(p."FirstName") + :p
FROM
	"Person" p

