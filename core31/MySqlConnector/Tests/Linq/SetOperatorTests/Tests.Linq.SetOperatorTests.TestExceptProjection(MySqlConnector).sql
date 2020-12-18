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

SELECT
	`t1`.`Value1`
FROM
	(
		SELECT DISTINCT
			`r`.`Value1`
		FROM
			(
				SELECT DISTINCT
					`t`.`Id`,
					`t`.`Value1`
				FROM
					`SampleData` `t`
				WHERE
					NOT EXISTS(
						SELECT
							*
						FROM
							`SampleData` `t_1`
						WHERE
							`t_1`.`Id` % 4 = 0 AND `t`.`Id` = `t_1`.`Id` AND `t`.`Value1` = `t_1`.`Value2` / 10
					) AND
					`t`.`Id` % 2 = 0
			) `r`
		WHERE
			NOT EXISTS(
				SELECT
					*
				FROM
					`SampleData` `t_2`
				WHERE
					`t_2`.`Id` % 6 = 0 AND `r`.`Id` = `t_2`.`Id` AND `r`.`Value1` = `t_2`.`Value1`
			)
	) `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SampleData`

