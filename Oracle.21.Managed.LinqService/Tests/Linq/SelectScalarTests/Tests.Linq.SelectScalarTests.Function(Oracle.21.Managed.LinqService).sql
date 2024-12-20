BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @text Varchar2(3) -- String
SET     @text = '123'

SELECT
	c_1."ChildID" || ',' || :text as "c1"
FROM
	"Child" c_1
FETCH NEXT 1 ROWS ONLY

