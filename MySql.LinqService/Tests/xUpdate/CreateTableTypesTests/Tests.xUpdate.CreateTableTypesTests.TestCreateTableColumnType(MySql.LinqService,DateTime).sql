BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`       INT      NOT NULL,
	`DateTime` DATETIME NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTime Datetime -- DateTime
SET     @DateTime = '2000-01-01'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTime`
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTime Datetime -- DateTime
SET     @DateTime = '2018-11-24 01:02:03'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTime`
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`DateTime`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CreateTableTypes`

