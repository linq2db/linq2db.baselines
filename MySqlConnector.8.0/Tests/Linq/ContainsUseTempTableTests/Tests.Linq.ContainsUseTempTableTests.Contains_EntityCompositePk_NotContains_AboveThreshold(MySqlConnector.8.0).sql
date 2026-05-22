-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `T_c90e88d3df1b`
(
	`K1`   INT           NOT NULL,
	`K2`   VARCHAR(32)   NOT NULL,
	`Data` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_T_c90e88d3df1b` PRIMARY KEY CLUSTERED (`K1`, `K2`)
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `T_c90e88d3df1b`
(
	`K1`,
	`K2`,
	`Data`
)
VALUES
(1,'k1','data1'),
(2,'k2','data2'),
(3,'k3','data3'),
(4,'k4','data4'),
(5,'k5','data5'),
(6,'k6','data6'),
(7,'k7','data7'),
(8,'k8','data8'),
(9,'k9','data9'),
(10,'k10','data10'),
(11,'k11','data11'),
(12,'k12','data12'),
(13,'k13','data13'),
(14,'k14','data14'),
(15,'k15','data15')

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`K1`,
	`r`.`K2`,
	`r`.`Data`
FROM
	`ContainsTempTableComposite` `r`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`T_c90e88d3df1b` `t1`
		WHERE
			`r`.`K1` = `t1`.`K1` AND `r`.`K2` = `t1`.`K2`
	)
ORDER BY
	`r`.`K1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `T_c90e88d3df1b`

