BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

SELECT
	Trunc(CURRENT_TIMESTAMP, 'DD') as "Key",
	Count(*) as "Count"
FROM
	"Parent" v
		INNER JOIN "Child" s ON v."ParentID" = s."ParentID"
WHERE
	v."Value1" > 0
GROUP BY
	Trunc(CURRENT_TIMESTAMP, 'DD')
FETCH NEXT :take ROWS ONLY

