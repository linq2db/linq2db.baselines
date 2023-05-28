BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "testparams"
			(
				"col2"    Int NOT NULL,
				"col3"    Int NOT NULL,
				"Column1" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @test Integer -- Int32
SET     @test = 0
DECLARE @TEST_1 Integer -- Int32
SET     @TEST_1 = 0
DECLARE @Component_Column1 Integer -- Int32
SET     @Component_Column1 = 1

INSERT INTO "testparams"
(
	"col2",
	"col3",
	"Column1"
)
VALUES
(
	@test,
	@TEST_1,
	@Component_Column1
)

BeforeExecute
-- Firebird
DECLARE @test Integer -- Int32
SET     @test = 2
DECLARE @TEST_1 Integer -- Int32
SET     @TEST_1 = 3

UPDATE
	"testparams"
SET
	"testparams"."col2" = @test,
	"testparams"."col3" = @TEST_1
WHERE
	"testparams"."Column1" = 1

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."col2",
	"t1"."col3",
	"t1"."Column1"
FROM
	"testparams" "t1"

BeforeExecute
-- Firebird
DECLARE @TEST Integer -- Int32
SET     @TEST = 2
DECLARE @test_1 Integer -- Int32
SET     @test_1 = 3

UPDATE
	"testparams"
SET
	"testparams"."col3" = @TEST,
	"testparams"."col2" = @test_1
WHERE
	"testparams"."Column1" = 1

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."col2",
	"t1"."col3",
	"t1"."Column1"
FROM
	"testparams" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

