﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	MAX("x"."OrderData1")

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	MIN("x"."OrderData1") DESC

