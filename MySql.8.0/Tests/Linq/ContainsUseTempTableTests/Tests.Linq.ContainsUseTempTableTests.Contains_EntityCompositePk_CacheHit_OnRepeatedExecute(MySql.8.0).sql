-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `T_d9442b652185`
(
	`K1`   INT           NOT NULL,
	`K2`   VARCHAR(32)   NOT NULL,
	`Data` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_T_d9442b652185` PRIMARY KEY CLUSTERED (`K1`, `K2`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `T_d9442b652185`
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
(10,'k10','data10')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`K1`,
	`r`.`K2`,
	`r`.`Data`
FROM
	`ContainsTempTableComposite` `r`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`T_d9442b652185` `t1`
		WHERE
			`r`.`K1` = `t1`.`K1` AND `r`.`K2` = `t1`.`K2`
	)
ORDER BY
	`r`.`K1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `T_d9442b652185`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `T_d9442b652185`
(
	`K1`   INT           NOT NULL,
	`K2`   VARCHAR(32)   NOT NULL,
	`Data` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_T_d9442b652185` PRIMARY KEY CLUSTERED (`K1`, `K2`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `T_d9442b652185`
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
(10,'k10','data10')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`K1`,
	`r`.`K2`,
	`r`.`Data`
FROM
	`ContainsTempTableComposite` `r`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`T_d9442b652185` `t1`
		WHERE
			`r`.`K1` = `t1`.`K1` AND `r`.`K2` = `t1`.`K2`
	)
ORDER BY
	`r`.`K1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `T_d9442b652185`

