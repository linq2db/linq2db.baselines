BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`     INT    NOT NULL,
	`Double` DOUBLE NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Double_1 Double
SET     @Double_1 = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Double`
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Double_1 Double
SET     @Double_1 = 3.1400000000000001

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Double`
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`t1`.`Id`, 
	`t1`.`Double`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `CreateTableTypes`

