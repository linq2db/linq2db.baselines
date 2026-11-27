-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`OtherId`,
	`a_Association`.`Id`
FROM
	`GuidConvertedOwner` `t1`
		LEFT JOIN `GuidConvertedTarget` `a_Association` ON `t1`.`OtherId` = CAST(`a_Association`.`Id` AS CHAR(36))

