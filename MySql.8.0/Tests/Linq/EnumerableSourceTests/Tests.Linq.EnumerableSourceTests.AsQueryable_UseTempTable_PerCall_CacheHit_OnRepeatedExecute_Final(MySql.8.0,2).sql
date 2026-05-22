-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `T_b2bcd0e1f991`
(
	`Id`   INT           NOT NULL,
	`Data` VARCHAR(4000)     NULL
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `T_b2bcd0e1f991`
(
	`Id`,
	`Data`
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	`T_b2bcd0e1f991` `t1`
ORDER BY
	`t1`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `T_b2bcd0e1f991`

