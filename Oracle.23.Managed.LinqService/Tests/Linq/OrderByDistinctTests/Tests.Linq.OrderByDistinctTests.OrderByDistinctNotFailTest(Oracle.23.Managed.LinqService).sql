BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

