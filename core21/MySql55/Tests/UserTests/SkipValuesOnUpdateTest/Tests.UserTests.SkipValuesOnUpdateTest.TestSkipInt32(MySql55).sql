BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `PR_1598_Update_Table`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255)     NULL,
	`Age`  INT              NULL,

	CONSTRAINT `PK_PR_1598_Update_Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Int32
SET     @Age = 2

INSERT INTO `PR_1598_Update_Table`
(
	`Id`,
	`Name`,
	`Age`
)
VALUES
(
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t`.`Id`, 
	`t`.`Name`, 
	`t`.`Age`
FROM
	`PR_1598_Update_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Int32
SET     @Age = 15
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Update_Table` `t1`
SET
	`t1`.`Name` = @Name,
	`t1`.`Age` = @Age
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t`.`Id`, 
	`t`.`Name`, 
	`t`.`Age`
FROM
	`PR_1598_Update_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Update_Table` `t1`
SET
	`t1`.`Name` = @Name
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t`.`Id`, 
	`t`.`Name`, 
	`t`.`Age`
FROM
	`PR_1598_Update_Table` `t`
WHERE
	`t`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `PR_1598_Update_Table`

