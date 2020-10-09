BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue1192Table`
(
	`IdId`      INT NOT NULL,
	`MyOtherId` INT NOT NULL,
	`Status`    INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			`Issue1192Table` `t`
		WHERE
			`t`.`Status` = 3 AND `t`.`MyOtherId` = 12
	)
FROM
	`Issue1192Table` `t_1`
WHERE
	`t_1`.`MyOtherId` = 12
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Issue1192Table`

