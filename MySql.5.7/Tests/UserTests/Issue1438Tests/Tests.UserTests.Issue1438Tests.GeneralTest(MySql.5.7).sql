-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Has UByte -- Boolean
SET     @Has = 1

INSERT INTO `Issue1438`
(
	`Has`
)
VALUES
(
	@Has
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

