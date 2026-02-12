-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`m_1`.`C1`,
	`d`.`Id`,
	`d`.`FormId`,
	`d`.`OrderIndex`,
	`d`.`Name1`,
	`d`.`Name2`,
	`d`.`Name3`
FROM
	(
		SELECT
			`t1`.`Id`,
			`t1`.`C1`
		FROM
			`Issue4596Form` `t1`
		LIMIT 1
	) `m_1`
		INNER JOIN `Issue4596Item` `d` ON `d`.`FormId` = `m_1`.`Id`
ORDER BY
	CASE
		WHEN `m_1`.`C1` = 'T' THEN `d`.`OrderIndex`
		ELSE 0
	END,
	CASE
		WHEN `m_1`.`C1` <> 'T' THEN `d`.`Name1`
		ELSE ''
	END,
	CASE
		WHEN `m_1`.`C1` <> 'T' THEN `d`.`Name2`
		ELSE ''
	END,
	CASE
		WHEN `m_1`.`C1` <> 'T' THEN `d`.`Name3`
		ELSE ''
	END

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`C1`
FROM
	`Issue4596Form` `t1`
LIMIT 1

