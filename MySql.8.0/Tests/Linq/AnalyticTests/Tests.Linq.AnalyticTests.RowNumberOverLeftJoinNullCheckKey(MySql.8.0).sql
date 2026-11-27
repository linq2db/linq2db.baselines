-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`l`.`Id`,
	ROW_NUMBER() OVER (PARTITION BY `l`.`Group` ORDER BY `r`.`Payload` IS NOT NULL, `l`.`Id`)
FROM
	`RowNumberLeftRecord` `l`
		LEFT JOIN `RowNumberRightRecord` `r` ON `l`.`Id` = `r`.`Id`
ORDER BY
	`l`.`Id`

