﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @test VarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 VarChar(4) -- String
SET     @test_1 = 'Test'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`SampleClass` `sampleClass_1`
		WHERE
			`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0
	) as `c1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @test VarChar(4) -- String
SET     @test = 'Test'
DECLARE @test_1 VarChar(4) -- String
SET     @test_1 = 'Test'

SELECT
	COUNT(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @test VarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 VarChar(5) -- String
SET     @test_1 = 'Value'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`SampleClass` `sampleClass_1`
		WHERE
			`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0
	) as `c1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @test VarChar(5) -- String
SET     @test = 'Value'
DECLARE @test_1 VarChar(5) -- String
SET     @test_1 = 'Value'

SELECT
	COUNT(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @test VarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 VarChar(5) -- String
SET     @test_1 = 'Class'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`SampleClass` `sampleClass_1`
		WHERE
			`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0
	) as `c1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @test VarChar(5) -- String
SET     @test = 'Class'
DECLARE @test_1 VarChar(5) -- String
SET     @test_1 = 'Class'

SELECT
	COUNT(*)
FROM
	`SampleClass` `sampleClass_1`
WHERE
	`sampleClass_1`.`Value` = @test OR LOCATE(@test_1, `sampleClass_1`.`Value2`) > 0

