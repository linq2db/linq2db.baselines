-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @ChildId Int32
SET     @ChildId = 2
DECLARE @Name_First VarChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second VarChar(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO `Base2`
(
	`Id`,
	`Type`,
	`Test_ChildId`,
	`Name_First`,
	`Name_Second`
)
VALUES
(
	@Id,
	@Type,
	@ChildId,
	@Name_First,
	@Name_Second
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Type`,
	`t1`.`Id`,
	`t1`.`Test_ChildId`,
	`t1`.`Name_First`,
	`t1`.`Name_Second`
FROM
	`Base2` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Type Int32
SET     @Type = 1
DECLARE @ChildId Int32
SET     @ChildId = 2
DECLARE @Name_First VarChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second VarChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`Base2` `t1`
SET
	`t1`.`Type` = @Type,
	`t1`.`Test_ChildId` = @ChildId,
	`t1`.`Name_First` = @Name_First,
	`t1`.`Name_Second` = @Name_Second
WHERE
	`t1`.`Id` = @Id

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Type`,
	`t1`.`Id`,
	`t1`.`Test_ChildId`,
	`t1`.`Name_First`,
	`t1`.`Name_Second`
FROM
	`Base2` `t1`
LIMIT 2

