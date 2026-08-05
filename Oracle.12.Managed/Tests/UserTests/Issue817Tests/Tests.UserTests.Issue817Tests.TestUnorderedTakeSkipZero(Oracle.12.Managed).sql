-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 1

SELECT
	1 as "c1"
FROM
	"Person" t1
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

