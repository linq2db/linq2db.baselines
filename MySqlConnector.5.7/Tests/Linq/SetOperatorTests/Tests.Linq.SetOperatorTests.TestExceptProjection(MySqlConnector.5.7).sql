BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SampleData`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `SampleData`
(
	`Id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,

	CONSTRAINT `PK_SampleData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	`r`.`Value1`
FROM
	`SampleData` `r`
WHERE
	`r`.`Id` % 2 = 0 AND  NOT EXISTS (
		SELECT
			*
		FROM
			`SampleData` `r_1`
		WHERE
			`r_1`.`Id` % 4 = 0 AND `r`.`Id` = `r_1`.`Id` AND `r`.`Value1` = `r_1`.`Value2` / 10
	) AND
	 NOT EXISTS (
		SELECT
			*
		FROM
			`SampleData` `r_2`
		WHERE
			`r_2`.`Id` % 6 = 0 AND `r`.`Id` = `r_2`.`Id` AND `r`.`Value1` = `r_2`.`Value1`
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SampleData`

