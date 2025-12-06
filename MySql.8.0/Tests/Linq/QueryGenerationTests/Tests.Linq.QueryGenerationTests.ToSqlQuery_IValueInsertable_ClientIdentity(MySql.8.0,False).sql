-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`
LIMIT 2

