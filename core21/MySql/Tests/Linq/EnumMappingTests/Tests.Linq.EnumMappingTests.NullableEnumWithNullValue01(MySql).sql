﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 104

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 101
DECLARE @Value_1 Int32
SET     @Value_1 = 11

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`IntValue`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 102
DECLARE @Value_1 Int32
SET     @Value_1 = 22

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`IntValue`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 103
DECLARE @Value_1 Int32
SET     @Value_1 = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`IntValue`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`r`.`ID`,
	`r`.`IntValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` <= 103
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 104

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

