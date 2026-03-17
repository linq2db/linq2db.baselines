-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `TableWithIdentity`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`TableWithIdentity` `t1`
SET
	`t1`.`Id` = 492,
	`t1`.`Value` = 123

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`
LIMIT 2

