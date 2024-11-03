BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @Id

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @Id

