BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	Person t1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	1
FROM
	Person t1
OFFSET :skip ROWS

