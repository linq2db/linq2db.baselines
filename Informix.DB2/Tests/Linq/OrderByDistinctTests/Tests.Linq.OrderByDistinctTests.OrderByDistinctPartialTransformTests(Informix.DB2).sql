﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData,
	x.OrderData2
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData2 DESC

