﻿BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "OrderByDistinctData"
(
	"Id"            Integer       NOT NULL,
	"DuplicateData" NVarChar(255)     NULL,
	"OrderData1"    Integer       NOT NULL,
	"OrderData2"    Integer       NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:"Id",
	:"DuplicateData",
	:"OrderData1",
	:"OrderData2"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:"Id",
	:"DuplicateData",
	:"OrderData1",
	:"OrderData2"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 100
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:"Id",
	:"DuplicateData",
	:"OrderData1",
	:"OrderData2"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	Max("x"."OrderData1")
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1"
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	Min("x"."OrderData1") DESC
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1" DESC
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	Max("x"."OrderData1"),
	Max("x"."OrderData2")
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2"
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	Max("x"."OrderData1"),
	Min("x"."OrderData2") DESC
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2" DESC
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	Min("x"."OrderData1") DESC,
	Min("x"."OrderData2") DESC
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1" DESC,
	"x"."OrderData2" DESC
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
GROUP BY
	"x"."DuplicateData"
ORDER BY
	Max("x"."OrderData1"),
	Min("x"."OrderData2") DESC
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2" DESC
LIMIT :"take" OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "OrderByDistinctData"

