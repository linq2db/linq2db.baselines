BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DataClass`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `DataClass`
(
	`Id`    INT      NOT NULL,
	`Value` DATETIME NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`DataClass` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DataClass`

