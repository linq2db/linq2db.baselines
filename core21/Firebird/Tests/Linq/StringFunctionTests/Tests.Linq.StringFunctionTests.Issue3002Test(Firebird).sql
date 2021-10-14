﻿BeforeExecute
-- Firebird

CREATE TABLE "SampleClass"
(
	"Id"     Int                                    NOT NULL,
	"Value"  VarChar(50) CHARACTER SET UNICODE_FSS,
	"Value2" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

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
-- Firebird

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
-- Firebird
DECLARE @test VarChar -- String
SET     @test = Test
DECLARE @test_2 VarChar(6) -- String
SET     @test_2 = '%Test%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				("sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @test VarChar -- String
SET     @test = Test
DECLARE @test_2 VarChar(6) -- String
SET     @test_2 = '%Test%'

SELECT
	Count(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	("sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_2 ESCAPE '~')

BeforeExecute
-- Firebird
DECLARE @test VarChar -- String
SET     @test = Value
DECLARE @test_2 VarChar(7) -- String
SET     @test_2 = '%Value%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				("sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @test VarChar -- String
SET     @test = Value
DECLARE @test_2 VarChar(7) -- String
SET     @test_2 = '%Value%'

SELECT
	Count(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	("sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_2 ESCAPE '~')

BeforeExecute
-- Firebird
DECLARE @test VarChar -- String
SET     @test = Class
DECLARE @test_2 VarChar(7) -- String
SET     @test_2 = '%Class%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				("sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @test VarChar -- String
SET     @test = Class
DECLARE @test_2 VarChar(7) -- String
SET     @test_2 = '%Class%'

SELECT
	Count(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	("sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_2 ESCAPE '~')

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

