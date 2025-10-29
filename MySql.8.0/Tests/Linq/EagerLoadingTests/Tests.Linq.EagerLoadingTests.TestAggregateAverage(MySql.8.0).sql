-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t3`.`AVG_1`
FROM
	`MasterClass` `m_1`
		LEFT JOIN LATERAL (
			SELECT
				AVG(CAST(`t2`.`DetailId` AS DOUBLE)) as `AVG_1`
			FROM
				(
					SELECT
						`t1`.`DetailId`
					FROM
						(
							SELECT DISTINCT
								`a_Details`.`DetailId`
							FROM
								`DetailClass` `a_Details`
							WHERE
								`m_1`.`Id1` = `a_Details`.`MasterId`
						) `t1`
					ORDER BY
						`t1`.`DetailId`
					LIMIT 1, 5
				) `t2`
		) `t3` ON 1=1
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

