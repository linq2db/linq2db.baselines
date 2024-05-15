BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 1000

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @tt Int64
SET     @tt = 600000000

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BigIntValue`
)
VALUES
(
	1001,
	@tt
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ID`,
	`t`.`BigIntValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1001
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 1000

