﻿BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "SampleClass"
(
	"Id"     Int          NOT NULL,
	"Value"  VarChar2(50)     NULL,
	"Value2" VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
DECLARE @test NVarchar2 -- String
SET     @test = Test
DECLARE @test_2 Varchar2(6) -- String
SET     @test_2 = '%Test%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" sampleClass_1
			WHERE
				(sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @test NVarchar2 -- String
SET     @test = Test
DECLARE @test_2 Varchar2(6) -- String
SET     @test_2 = '%Test%'

SELECT
	Count(*)
FROM
	"SampleClass" sampleClass_1
WHERE
	(sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_2 ESCAPE '~')

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @test NVarchar2 -- String
SET     @test = Value
DECLARE @test_2 Varchar2(7) -- String
SET     @test_2 = '%Value%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" sampleClass_1
			WHERE
				(sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @test NVarchar2 -- String
SET     @test = Value
DECLARE @test_2 Varchar2(7) -- String
SET     @test_2 = '%Value%'

SELECT
	Count(*)
FROM
	"SampleClass" sampleClass_1
WHERE
	(sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_2 ESCAPE '~')

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @test NVarchar2 -- String
SET     @test = Class
DECLARE @test_2 Varchar2(7) -- String
SET     @test_2 = '%Class%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"SampleClass" sampleClass_1
			WHERE
				(sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_2 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @test NVarchar2 -- String
SET     @test = Class
DECLARE @test_2 Varchar2(7) -- String
SET     @test_2 = '%Class%'

SELECT
	Count(*)
FROM
	"SampleClass" sampleClass_1
WHERE
	(sampleClass_1."Value" = :test OR sampleClass_1."Value2" LIKE :test_2 ESCAPE '~')

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

