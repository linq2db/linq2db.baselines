BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DataClass`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `DataClass`
(
	`Id`    INT      NOT NULL,
	`Value` DATETIME NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 0
DECLARE @Value DateTime
SET     @Value = '2020-02-29 17:54:55'

INSERT INTO `DataClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`DataClass` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DataClass`

