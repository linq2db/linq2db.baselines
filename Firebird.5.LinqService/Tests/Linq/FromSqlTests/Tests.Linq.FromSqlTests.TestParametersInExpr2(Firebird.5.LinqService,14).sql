BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'sample_class')) THEN
		EXECUTE STATEMENT 'DROP TABLE "sample_class"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'sample_class')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "sample_class"
			(
				"id"    Int                                   NOT NULL,
				"value" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_1'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_2'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_3'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_4'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_5'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_6'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_7'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_8'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Str_9'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_10'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_11'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_12'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_13'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 14
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_14'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 15
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_15'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 16
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_16'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 17
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_17'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 18
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_18'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 19
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_19'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Str_20'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 5
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 14

SELECT
	"s"."value",
	"s"."id"
FROM
	"sample_class" "t1"
		INNER JOIN (
			SELECT * FROM "sample_class" where "id" >= @p and "id" < @p_1
		) "s" ON "s"."id" = "t1"."id"
WHERE
	"s"."id" > 10
ORDER BY
	"s"."id"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @startId Integer -- Int32
SET     @startId = 5
DECLARE @endId Integer -- Int32
SET     @endId = 14

SELECT
	"t"."value",
	"t"."id"
FROM
	"sample_class" "t"
WHERE
	"t"."id" >= @startId AND "t"."id" < @endId AND "t"."id" > 10
ORDER BY
	"t"."id"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'sample_class')) THEN
		EXECUTE STATEMENT 'DROP TABLE "sample_class"';
END

