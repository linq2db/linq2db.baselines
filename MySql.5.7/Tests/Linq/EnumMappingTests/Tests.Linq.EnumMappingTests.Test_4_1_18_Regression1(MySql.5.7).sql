BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @Id

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BigIntValue`,
	`IntValue`
)
VALUES
(
	101,
	12,
	10
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CASE
		WHEN `t1`.`BigIntValue` IS NOT NULL AND `t1`.`IntValue` IS NOT NULL
			THEN 1
		ELSE 0
	END,
	`t1`.`BigIntValue`,
	`t1`.`IntValue`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` = 101

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @Id

