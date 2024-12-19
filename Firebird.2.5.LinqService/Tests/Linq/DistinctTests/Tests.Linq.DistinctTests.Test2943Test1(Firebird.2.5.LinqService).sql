BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DistinctOrderByTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DistinctOrderByTable"
			(
				"Id" Int                                    NOT NULL,
				F1   Int                                    NOT NULL,
				F2   VarChar(255) CHARACTER SET UNICODE_FSS,
				F3   Int                                    NOT NULL,

				CONSTRAINT "PK_DistinctOrderByTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @F1 Integer -- Int32
SET     @F1 = 8
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '8'
DECLARE @F3 Integer -- Int32
SET     @F3 = 5

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @F1 Integer -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer -- Int32
SET     @F3 = 3

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @F1 Integer -- Int32
SET     @F1 = 2
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '2'
DECLARE @F3 Integer -- Int32
SET     @F3 = 1

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @F1 Integer -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer -- Int32
SET     @F3 = 4

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @F1 Integer -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer -- Int32
SET     @F3 = 7

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @F1 Integer -- Int32
SET     @F1 = 5
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '5'
DECLARE @F3 Integer -- Int32
SET     @F3 = 2

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @F1 Integer -- Int32
SET     @F1 = 2
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '2'
DECLARE @F3 Integer -- Int32
SET     @F3 = 8

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @F1 Integer -- Int32
SET     @F1 = 4
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '4'
DECLARE @F3 Integer -- Int32
SET     @F3 = 6

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT DISTINCT
	"r".F1,
	"r".F2
FROM
	"DistinctOrderByTable" "r"
ORDER BY
	"r".F1 DESC,
	"r".F2

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DistinctOrderByTable"';
END

