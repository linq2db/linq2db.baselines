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
SET     @Id = 2
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 3
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 4
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 5
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 6
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 5

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
SET     @Id = 20
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 30
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 40
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 50
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 60
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 5

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
DECLARE @Id  -- Int32
SET     @Id = 200
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 300
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 400
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 500
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 600
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 5

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
SET     @take = 2

SELECT
	"t"."DuplicateData",
	(
		SELECT
			Count(*)
		FROM
			"OrderByDistinctData" "s"
		WHERE
			("s"."DuplicateData" IS NULL AND "t"."DuplicateData" IS NULL OR "s"."DuplicateData" = "t"."DuplicateData")
	)
FROM
	(
		SELECT
			"t1"."Id",
			"t1"."DuplicateData"
		FROM
			"OrderByDistinctData" "t1"
		LIMIT :"take"
	) "t"
ORDER BY
	"t"."Id" DESC

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "OrderByDistinctData"

