-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`m_1`.`Id`,
	`m_1`.`Id_1`,
	`d_1`.`Id`,
	`d_1`.`ProductId`,
	`d_1`.`OrganisationId`
FROM
	(
		SELECT DISTINCT
			`a_Product`.`Id`,
			`t1`.`Id` as `Id_1`
		FROM
			(
				SELECT DISTINCT
					`s`.`Id`
				FROM
					`ClashOrg` `x`
						INNER JOIN `ClashOrgSystem` `a` ON `a`.`OrganisationId` = `x`.`Id`
						INNER JOIN `ClashSystem` `s` ON `a`.`SystemId` = `s`.`Id`
				WHERE
					`x`.`Id` = 5
			) `t1`
				INNER JOIN `ClashStage` `d` ON `t1`.`Id` = `d`.`SystemId`
				LEFT JOIN `ClashProduct` `a_Product` ON `d`.`ProductId` = `a_Product`.`Id`
	) `m_1`
		INNER JOIN `ClashProductOrg` `d_1` ON `m_1`.`Id` = `d_1`.`ProductId`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`SystemId`,
	`d`.`ProductId`,
	`a_Product`.`Id`
FROM
	(
		SELECT DISTINCT
			`s`.`Id`
		FROM
			`ClashOrg` `x`
				INNER JOIN `ClashOrgSystem` `a` ON `a`.`OrganisationId` = `x`.`Id`
				INNER JOIN `ClashSystem` `s` ON `a`.`SystemId` = `s`.`Id`
		WHERE
			`x`.`Id` = 5
	) `m_1`
		INNER JOIN `ClashStage` `d` ON `m_1`.`Id` = `d`.`SystemId`
		LEFT JOIN `ClashProduct` `a_Product` ON `d`.`ProductId` = `a_Product`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`s`.`Id`
FROM
	`ClashOrg` `x`
		INNER JOIN `ClashOrgSystem` `a` ON `a`.`OrganisationId` = `x`.`Id`
		INNER JOIN `ClashSystem` `s` ON `a`.`SystemId` = `s`.`Id`
WHERE
	`x`.`Id` = 5

