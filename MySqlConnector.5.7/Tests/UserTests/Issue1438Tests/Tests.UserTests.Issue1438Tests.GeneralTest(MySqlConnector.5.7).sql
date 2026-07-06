INSERT INTO `Issue1438`
(
	`Has`
)
VALUES
(
	@Has
)
;
SELECT
	LAST_INSERT_ID() as `c1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1

SELECT
	`t1`.`Id`,
	`t1`.`Has`
FROM
	`Issue1438` `t1`
WHERE
	`t1`.`Id` = @id
LIMIT 2

