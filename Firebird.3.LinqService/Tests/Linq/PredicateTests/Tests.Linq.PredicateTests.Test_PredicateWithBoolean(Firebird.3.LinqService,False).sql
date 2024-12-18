BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BooleanTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BooleanTable"
			(
				"Id"     Int NOT NULL,
				"Value1" Int NOT NULL,
				"Value2" Int NOT NULL,
				"Value4" Int,
				"Value5" Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 14
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 15
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 16
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 17
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 18
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 19
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 21
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 22
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 23
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 24
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 25
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 26
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 27
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 28
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 29
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 30
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 31
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 32
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 33
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 34
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 35
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 36
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value2") = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" = "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" <> "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" = "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL OR "r"."Value5" IS NULL AND "r"."Value4" IS NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" = "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL OR
	"r"."Value5" IS NULL AND "r"."Value4" IS NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" = "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL OR "r"."Value5" IS NULL AND "r"."Value4" IS NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" = "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL OR "r"."Value5" IS NULL AND "r"."Value4" IS NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value2") <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" <> "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value2") <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" = "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" = "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" = "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL OR "r"."Value5" IS NULL AND "r"."Value4" IS NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" = "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL OR "r"."Value5" IS NULL AND "r"."Value4" IS NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" = "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL OR "r"."Value5" IS NULL AND "r"."Value4" IS NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" = "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL OR
	"r"."Value5" IS NULL AND "r"."Value4" IS NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" > "r"."Value2") = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" > "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" > "r"."Value2") = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" <= "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" > "r"."Value4" AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" > "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" > "r"."Value4" AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" > "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" > "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" > "r"."Value4" AND "r"."Value5" IS NOT NULL AND
	"r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" > "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" > "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" > "r"."Value2") <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" <= "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" > "r"."Value2") <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" > "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" > "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" > "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" > "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" > "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" > "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" > "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" > "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" > "r"."Value4" AND "r"."Value5" IS NOT NULL AND
	"r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" >= "r"."Value2") = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" >= "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" >= "r"."Value2") = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" < "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" >= "r"."Value4" AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" >= "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" >= "r"."Value4" AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" >= "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" >= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" >= "r"."Value4" AND "r"."Value5" IS NOT NULL AND
	"r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" >= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" >= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" >= "r"."Value2") <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" < "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" >= "r"."Value2") <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" >= "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" >= "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" >= "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" >= "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" >= "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" >= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" >= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" >= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" >= "r"."Value4" AND "r"."Value5" IS NOT NULL AND
	"r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" < "r"."Value2") = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" < "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" < "r"."Value2") = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" >= "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" < "r"."Value4" AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" < "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" < "r"."Value4" AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" < "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" < "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" < "r"."Value4" AND "r"."Value5" IS NOT NULL AND
	"r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" < "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" < "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" < "r"."Value2") <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" >= "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" < "r"."Value2") <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" < "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" < "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" < "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" < "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" < "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" < "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" < "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" < "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" < "r"."Value4" AND "r"."Value5" IS NOT NULL AND
	"r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" <= "r"."Value2") = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" <= "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" <= "r"."Value2") = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" > "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" <= "r"."Value4" AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" <= "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" <= "r"."Value4" AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" <= "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" <= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) = @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" <= "r"."Value4" AND "r"."Value5" IS NOT NULL AND
	"r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" <= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) = @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" <= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" <= "r"."Value2") <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" > "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" <= "r"."Value2") <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" <= "r"."Value2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" <= "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value1" <= "r"."Value4" AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value1" <= "r"."Value4" AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value1" <= "r"."Value4" AND "r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @True Boolean
SET     @True = TRUE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" <= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) <> @True

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT ("r"."Value5" <= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @False Boolean
SET     @False = FALSE

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	("r"."Value5" <= "r"."Value4" AND "r"."Value5" IS NOT NULL AND "r"."Value4" IS NOT NULL) <> @False

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Value5" <= "r"."Value4" AND "r"."Value5" IS NOT NULL AND
	"r"."Value4" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BooleanTable"';
END

