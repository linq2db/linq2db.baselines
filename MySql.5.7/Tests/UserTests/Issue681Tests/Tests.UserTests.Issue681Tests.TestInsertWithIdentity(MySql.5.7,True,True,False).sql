-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `testdata`.`Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

