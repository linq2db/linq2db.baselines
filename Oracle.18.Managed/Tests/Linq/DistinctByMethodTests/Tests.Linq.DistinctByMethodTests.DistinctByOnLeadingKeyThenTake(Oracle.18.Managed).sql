-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD(e."ParentID", 3) ORDER BY MOD(e."ParentID", 3), e."ParentID" DESC) as "RowNumber",
			e."ParentID",
			e."Value1"
		FROM
			"Parent" e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	MOD(t1."ParentID", 3),
	t1."ParentID" DESC
FETCH NEXT :take ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

