-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1" DESC

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2" DESC

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1" DESC,
	"x"."OrderData2" DESC

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2" DESC

