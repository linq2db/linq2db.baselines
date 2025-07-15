BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @test VarChar(4) -- String
SET     @test = 'Test'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`SampleClass` `sampleClass_1`
		WHERE
			`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0
	) as `c1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @test VarChar(4) -- String
SET     @test = 'Test'

SELECT
	COUNT(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @test VarChar(5) -- String
SET     @test = 'Value'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`SampleClass` `sampleClass_1`
		WHERE
			`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0
	) as `c1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @test VarChar(5) -- String
SET     @test = 'Value'

SELECT
	COUNT(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @test VarChar(5) -- String
SET     @test = 'Class'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`SampleClass` `sampleClass_1`
		WHERE
			`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0
	) as `c1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @test VarChar(5) -- String
SET     @test = 'Class'

SELECT
	COUNT(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	`sampleClass_1`.`Value` = @test OR LOCATE(@test, `sampleClass_1`.`Value2`) > 0

