-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 123

INSERT INTO `TableWithIdentity`
(
	`Id`,
	`Value`
)
VALUES
(
	543,
	@value
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`
LIMIT 2

