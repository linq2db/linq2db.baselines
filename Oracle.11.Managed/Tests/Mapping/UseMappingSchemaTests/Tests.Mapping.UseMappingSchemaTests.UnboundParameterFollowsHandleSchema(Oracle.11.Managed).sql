-- Oracle.11.Managed Oracle11
DECLARE @token NVarchar2(2) -- String
SET     @token = 'Bx'

SELECT
	:token
FROM
	"Parent" p
WHERE
	p."ParentID" = 1

