﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 0
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 0
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	MAX(Mod("x"."OrderData1", 3))
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

