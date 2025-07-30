BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = 105

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 104
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`ID`,
	`r`.`StringValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` <= 104
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`ID`,
	`r`.`IntValue`,
	`r`.`StringValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` <= 104
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = 105

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

