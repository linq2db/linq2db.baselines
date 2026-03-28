-- Oracle.11.Managed Oracle11
DECLARE @text Varchar2(3) -- String
SET     @text = '123'

SELECT
	CAST(c_1."ChildID" AS VarChar(255)) || ',' || Nvl(:text, '')
FROM
	"Child" c_1
WHERE
	ROWNUM <= 1

