BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @p Int32
SET     @p = 104

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @Id Int32
SET     @Id = 101
DECLARE @Value String(2) -- StringFixedLength
SET     @Value = '11'

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`StringValue`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @Id Int32
SET     @Id = 102
DECLARE @Value String(2) -- StringFixedLength
SET     @Value = '22'

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`StringValue`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @Id Int32
SET     @Id = 103
DECLARE @Value String -- StringFixedLength
SET     @Value = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`StringValue`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`r`.`ID`,
	`r`.`StringValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` <= 103
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`r`.`ID`,
	`r`.`IntValue`,
	`r`.`StringValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` <= 103
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @p Int32
SET     @p = 104

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

