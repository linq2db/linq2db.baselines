﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "OrderByDistinctData"
			(
				"Id"            Int                                    NOT NULL,
				"DuplicateData" VarChar(255) CHARACTER SET UNICODE_FSS,
				"OrderData1"    Int                                    NOT NULL,
				"OrderData2"    Int                                    NOT NULL,

				CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 30
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 40
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 50
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(3)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(5)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 200
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(5)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 300
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(5)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 400
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(5)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 500
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(5)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 600
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer -- Int32
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
	CAST(@Id AS Int),
	CAST(@DuplicateData AS VARCHAR(5)),
	CAST(@OrderData1 AS Int),
	CAST(@OrderData2 AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t_1"."DuplicateData",
	(
		SELECT
			COUNT(*)
		FROM
			"OrderByDistinctData" "c_1"
		WHERE
			("c_1"."DuplicateData" = "t_1"."DuplicateData" OR "c_1"."DuplicateData" IS NULL AND "t_1"."DuplicateData" IS NULL)
	)
FROM
	(
		SELECT FIRST @take
			"t"."Id",
			"t"."DuplicateData"
		FROM
			"OrderByDistinctData" "t"
	) "t_1"
ORDER BY
	"t_1"."Id" DESC

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

