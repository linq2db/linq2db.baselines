﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `PR_1598_Insert_Table`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,
	`Age`  INT               NULL,

	CONSTRAINT `PK_PR_1598_Insert_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Age Int32
SET     @Age = 14

INSERT INTO `PR_1598_Insert_Table`
(
	`Id`,
	`Age`
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Insert_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Age Int32
SET     @Age = 15

INSERT INTO `PR_1598_Insert_Table`
(
	`Id`,
	`Age`
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Insert_Table` `t`
WHERE
	`t`.`Id` = 2
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `PR_1598_Insert_Table`

