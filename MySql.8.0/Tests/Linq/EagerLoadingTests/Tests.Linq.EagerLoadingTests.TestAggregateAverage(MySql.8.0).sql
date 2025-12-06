-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			AVG(CAST(`t2`.`Average` AS DOUBLE))
		FROM
			(
				SELECT
					`t1`.`Average`
				FROM
					(
						SELECT DISTINCT
							`a_Details`.`DetailId` as `Average`
						FROM
							`DetailClass` `a_Details`
						WHERE
							`m_1`.`Id1` = `a_Details`.`MasterId`
					) `t1`
				ORDER BY
					`t1`.`Average`
				LIMIT 1, 5
			) `t2`
	)
FROM
	`MasterClass` `m_1`
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			`DetailClass` `a_Details_1`
		WHERE
			`m_1`.`Id1` = `a_Details_1`.`MasterId`
	) > 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id1`,
	`d`.`DetailId`,
	`d`.`MasterId`,
	`d`.`DetailValue`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id1`
		FROM
			`MasterClass` `t1`
	) `m_1`
		INNER JOIN `DetailClass` `d` ON `m_1`.`Id1` = `d`.`MasterId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id1`,
	`t1`.`Id2`,
	`t1`.`Value`,
	`t1`.`ByteValues`
FROM
	`MasterClass` `t1`

