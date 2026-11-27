-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`CharFld`
FROM
	`CharFieldRecord` `t1`
LIMIT 1

