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
	4,
	10
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CASE
		WHEN `r`.`BigIntValue` IS NOT NULL AND `r`.`IntValue` IS NOT NULL
			THEN 1
		ELSE 0
	END,
	`r`.`BigIntValue`,
	`r`.`IntValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @Id

