BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleClass"
			(
				"Id"     Int                                    NOT NULL,
				"Value"  VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value2" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "SampleClass"
(
	"Id",
	"Value",
	"Value2"
)
VALUES
(
	1,
	'Test',
	'SampleClass'
)

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "SampleClass"
(
	"Id",
	"Value",
	"Value2"
)
VALUES
(
	2,
	'Value',
	'SomeTest'
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @test VarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 VarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @test VarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 VarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	COUNT(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @test VarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @test VarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	COUNT(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @test VarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @test VarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	COUNT(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

