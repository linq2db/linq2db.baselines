﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `SampleClass`
(
	`Id`     INT          NOT NULL,
	`Value`  VARCHAR(50)      NULL,
	`Value2` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`,
	`Value2`
)
VALUES
(
	1,
	'Test',
	'SampleClass'
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`,
	`Value2`
)
VALUES
(
	2,
	'Value',
	'SomeTest'
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Test
DECLARE @test_1 VarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR `sampleClass_1`.`Value2` LIKE @test_1 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Test
DECLARE @test_1 VarChar(6) -- String
SET     @test_1 = '%Test%'

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR `sampleClass_1`.`Value2` LIKE @test_1 ESCAPE '~')

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Value
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR `sampleClass_1`.`Value2` LIKE @test_1 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Value
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Value%'

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR `sampleClass_1`.`Value2` LIKE @test_1 ESCAPE '~')

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Class
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR `sampleClass_1`.`Value2` LIKE @test_1 ESCAPE '~')
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Class
DECLARE @test_1 VarChar(7) -- String
SET     @test_1 = '%Class%'

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR `sampleClass_1`.`Value2` LIKE @test_1 ESCAPE '~')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

