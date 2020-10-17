BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	l."ParentID"
FROM
	"Child" l
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	1
FROM
	"Parent" sep

