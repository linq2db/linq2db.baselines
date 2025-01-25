BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @test NVarchar2(4) -- String
SET     @test = 'Test'
DECLARE @test_1 Varchar2(6) -- String
SET     @test_1 = '%Test%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" sampleClass_1
			WHERE
				sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_1 ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @test NVarchar2(4) -- String
SET     @test = 'Test'
DECLARE @test_1 Varchar2(6) -- String
SET     @test_1 = '%Test%'

SELECT
	COUNT(*)
FROM
	"SampleClass" sampleClass_1
WHERE
	sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_1 ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @test NVarchar2(5) -- String
SET     @test = 'Value'
DECLARE @test_1 Varchar2(7) -- String
SET     @test_1 = '%Value%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" sampleClass_1
			WHERE
				sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_1 ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @test NVarchar2(5) -- String
SET     @test = 'Value'
DECLARE @test_1 Varchar2(7) -- String
SET     @test_1 = '%Value%'

SELECT
	COUNT(*)
FROM
	"SampleClass" sampleClass_1
WHERE
	sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_1 ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @test NVarchar2(5) -- String
SET     @test = 'Class'
DECLARE @test_1 Varchar2(7) -- String
SET     @test_1 = '%Class%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" sampleClass_1
			WHERE
				sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_1 ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @test NVarchar2(5) -- String
SET     @test = 'Class'
DECLARE @test_1 Varchar2(7) -- String
SET     @test_1 = '%Class%'

SELECT
	COUNT(*)
FROM
	"SampleClass" sampleClass_1
WHERE
	sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_1 ESCAPE '~'

