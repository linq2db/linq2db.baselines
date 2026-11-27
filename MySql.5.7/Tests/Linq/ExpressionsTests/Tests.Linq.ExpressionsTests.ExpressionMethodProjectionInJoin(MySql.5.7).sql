-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`contract`.`Id`,
	`servProj`.`IdContract`
FROM
	`ProjectionServiceTable` `servProj`
		INNER JOIN `ProjectionContractTable` `contract` ON `servProj`.`IdContract` = `contract`.`Id`

