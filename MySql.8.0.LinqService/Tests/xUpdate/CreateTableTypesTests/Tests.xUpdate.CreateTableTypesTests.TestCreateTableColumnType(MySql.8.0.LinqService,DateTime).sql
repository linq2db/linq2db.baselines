﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`       INT      NOT NULL,
	`DateTime` DATETIME NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTime DateTime
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTime DateTime
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`DateTime`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CreateTableTypes`

