-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`GroupId`,
	`t1`.`Name`
FROM
	`BatchItem` `t1`
ORDER BY
	`t1`.`Id`
LIMIT @take
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`BatchItem` `t1`
	) as `Total`

