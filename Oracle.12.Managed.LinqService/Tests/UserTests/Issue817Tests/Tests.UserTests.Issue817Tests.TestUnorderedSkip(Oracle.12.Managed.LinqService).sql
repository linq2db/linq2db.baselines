BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	1 as "c1"
FROM
	"Person" t1
OFFSET :skip ROWS

