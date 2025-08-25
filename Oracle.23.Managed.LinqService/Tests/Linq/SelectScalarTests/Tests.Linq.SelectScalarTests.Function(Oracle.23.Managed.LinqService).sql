BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @text Varchar2(3) -- String
SET     @text = '123'

SELECT
	CAST(c_1."ChildID" AS VarChar(255)) || ',' || Coalesce(:text, '') as "c1"
FROM
	"Child" c_1
FETCH NEXT 1 ROWS ONLY

