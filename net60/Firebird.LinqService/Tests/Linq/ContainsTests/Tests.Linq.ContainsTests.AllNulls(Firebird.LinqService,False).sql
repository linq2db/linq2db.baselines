BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Src"
			(
				"Id"  Int NOT NULL,
				"Int" Int
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL

INSERT INTO "Src"
(
	"Id",
	"Int"
)
VALUES
(
	@Id,
	@Int_1
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2

INSERT INTO "Src"
(
	"Id",
	"Int"
)
VALUES
(
	@Id,
	@Int_1
)

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (NULL, NULL)

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (NULL, NULL)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

