BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Issue1192Table`
(
	`IdId`      INT NOT NULL,
	`MyOtherId` INT NOT NULL,
	`Status`    INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Issue1192Table` `t`
		WHERE
			`t1`.`c1` = 1 AND `t`.`Status` = 3 AND `t`.`MyOtherId` = 12
	)
FROM
	(
		SELECT
			1 as `c1`
		FROM
			`Issue1192Table` `t_1`
		WHERE
			`t_1`.`MyOtherId` = 12
	) `t1`
GROUP BY
	`t1`.`c1`
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Issue1192Table`

