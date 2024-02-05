BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`     INT           NOT NULL,
	`Value`  VARCHAR(50)       NULL,
	`Value2` VARCHAR(4000)     NULL
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
DECLARE @test_1 VarChar(4) -- String
SET     @test_1 = 'Test'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0)
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Test
DECLARE @test_1 VarChar(4) -- String
SET     @test_1 = 'Test'

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Value
DECLARE @test_1 VarChar(5) -- String
SET     @test_1 = 'Value'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0)
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Value
DECLARE @test_1 VarChar(5) -- String
SET     @test_1 = 'Value'

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Class
DECLARE @test_1 VarChar(5) -- String
SET     @test_1 = 'Class'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`SampleClass` `sampleClass_1`
			WHERE
				(`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0)
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @test VarChar -- String
SET     @test = Class
DECLARE @test_1 VarChar(5) -- String
SET     @test_1 = 'Class'

SELECT
	Count(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	(`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

