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

-- Firebird.4 Firebird4
DECLARE @test VarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 VarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"SampleClass" "sampleClass_1"
		WHERE
			"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'
	)
FROM rdb$database

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

-- Firebird.4 Firebird4
DECLARE @test VarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"SampleClass" "sampleClass_1"
		WHERE
			"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'
	)
FROM rdb$database

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

-- Firebird.4 Firebird4
DECLARE @test VarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"SampleClass" "sampleClass_1"
		WHERE
			"sampleClass_1"."Value" = @test OR "sampleClass_1"."Value2" LIKE @test_1 ESCAPE '~'
	)
FROM rdb$database

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

