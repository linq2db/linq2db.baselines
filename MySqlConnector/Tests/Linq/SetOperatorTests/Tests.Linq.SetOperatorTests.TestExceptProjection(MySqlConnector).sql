BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleData`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleData`
(
	`Id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,

	CONSTRAINT `PK_SampleData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT DISTINCT
	`r_2`.`Id`,
	`r_2`.`Value_1`,
	`r_2`.`Value_1`
FROM
	(
		SELECT DISTINCT
			`r`.`Id`,
			`r`.`Value1` as `Value_1`
		FROM
			`SampleData` `r`
		WHERE
			`r`.`Id` % 2 = 0 AND NOT EXISTS(
				SELECT
					*
				FROM
					`SampleData` `r_1`
				WHERE
					`r_1`.`Id` % 4 = 0 AND `r`.`Id` = `r_1`.`Id` AND `r`.`Value1` = `r_1`.`Value2` / 10
			)
	) `r_2`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`SampleData` `r_3`
		WHERE
			`r_3`.`Id` % 6 = 0 AND `r_2`.`Id` = `r_3`.`Id` AND
			`r_2`.`Value_1` = `r_3`.`Value1`
	)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleData`

