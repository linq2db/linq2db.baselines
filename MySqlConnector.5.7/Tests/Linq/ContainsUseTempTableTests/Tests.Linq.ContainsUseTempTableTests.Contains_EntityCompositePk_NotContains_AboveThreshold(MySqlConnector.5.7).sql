-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `T_0fd6ae57e539`
(
	`K1`   INT           NOT NULL,
	`K2`   VARCHAR(32)   NOT NULL,
	`Data` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_T_0fd6ae57e539` PRIMARY KEY CLUSTERED (`K1`, `K2`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `T_0fd6ae57e539`
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
			`T_0fd6ae57e539` `t1`
		WHERE
			`r`.`K1` = `t1`.`K1` AND `r`.`K2` = `t1`.`K2`
	)
ORDER BY
	`r`.`K1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `T_0fd6ae57e539`

