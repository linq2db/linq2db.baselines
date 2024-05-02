BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`PersonID`,
	`d`.`Taxonomy`
FROM
	(
		SELECT DISTINCT
			`s`.`PersonID`
		FROM
			`Doctor` `s`
	) `m_1`
		INNER JOIN `Doctor` `d` ON `m_1`.`PersonID` = `d`.`PersonID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`s`.`PersonID`
FROM
	`Doctor` `s`
GROUP BY
	`s`.`PersonID`

