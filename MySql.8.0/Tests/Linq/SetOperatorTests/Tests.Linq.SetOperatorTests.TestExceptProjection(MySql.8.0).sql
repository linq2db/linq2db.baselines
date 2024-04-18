BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `SampleData`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `SampleData`
(
	`Id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,

	CONSTRAINT `PK_SampleData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `SampleData`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`
)
VALUES
(1,10,100,1000),
(2,20,200,2000),
(3,30,300,3000),
(4,40,400,4000),
(5,50,500,5000),
(6,60,600,6000),
(7,70,700,7000),
(8,80,800,8000),
(9,90,900,9000),
(10,100,1000,10000)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Value_1`
FROM
	(
		SELECT
			`t`.`Id`,
			`t`.`Value1` as `Value_1`
		FROM
			`SampleData` `t`
		WHERE
			`t`.`Id` % 2 = 0
		EXCEPT
		SELECT
			`t_1`.`Id`,
			`t_1`.`Value2` / 10 as `Value_1`
		FROM
			`SampleData` `t_1`
		WHERE
			`t_1`.`Id` % 4 = 0
		EXCEPT
		SELECT
			`t_2`.`Id`,
			`t_2`.`Value1` as `Value_1`
		FROM
			`SampleData` `t_2`
		WHERE
			`t_2`.`Id` % 6 = 0
	) `r`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `SampleData`

