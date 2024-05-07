BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT DISTINCT
	"t1"."Id"
FROM
	(
		SELECT
			"x_2"."Id",
			"x_2"."DuplicateData",
			"x_2"."OrderData1",
			"x_2"."OrderData2"
		FROM
			(
				SELECT
					"x"."Id",
					"x"."DuplicateData",
					"x"."OrderData1",
					"x"."OrderData2"
				FROM
					"OrderByDistinctData" "x"
				WHERE
					"x"."Id" BETWEEN 1 AND 9
				UNION ALL
				SELECT
					"x_1"."Id",
					"x_1"."DuplicateData",
					"x_1"."OrderData1",
					"x_1"."OrderData2"
				FROM
					"OrderByDistinctData" "x_1"
				WHERE
					"x_1"."Id" BETWEEN 10 AND 90
			) "x_2"
		UNION
		SELECT
			"x_3"."Id",
			"x_3"."DuplicateData",
			"x_3"."OrderData1",
			"x_3"."OrderData2"
		FROM
			"OrderByDistinctData" "x_3"
		WHERE
			"x_3"."Id" BETWEEN 100 AND 900
	) "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

