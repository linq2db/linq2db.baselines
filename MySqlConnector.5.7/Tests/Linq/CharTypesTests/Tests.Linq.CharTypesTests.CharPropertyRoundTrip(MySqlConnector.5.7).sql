-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @CharFld String -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO `CharFieldRecord`
(
	`CharFld`
)
VALUES
(
	@CharFld
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`CharFld`
FROM
	`CharFieldRecord` `t1`
LIMIT 1

