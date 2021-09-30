BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `SampleClass`
(
	`Id`     INT          NOT NULL,
	`Value`  VARCHAR(50)      NULL,
	`Value2` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Test

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0)
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Test

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Value

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0)
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Value

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Class

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0)
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Class

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

