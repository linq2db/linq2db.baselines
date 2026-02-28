-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`OuterTable` `t1`
SET
	`t1`.`Field1` = (
		SELECT
			`b_1`.`Field4`
		FROM
			(
				SELECT
					1 as `c1`
			) `t2`
				INNER JOIN LATERAL (
					SELECT
						`b`.`Field4`
					FROM
						`InnerTable` `b`
					WHERE
						`t1`.`Field2` = `b`.`Field3`
					ORDER BY
						`b`.`Field4`
					LIMIT 1
				) `b_1` ON 1=1
	)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Field1`,
	`t1`.`Field2`
FROM
	`OuterTable` `t1`
ORDER BY
	`t1`.`Id`

