BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale UByte -- Boolean
SET     @IsMale = 0

INSERT INTO `Base`
(
	`Code`,
	`Id`,
	`Name`,
	`IsMale`
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Int32
SET     @Age = 10

INSERT INTO `Base`
(
	`Code`,
	`Id`,
	`Name`,
	`Age`
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`Code`,
	`e`.`Id`,
	`e`.`Name`,
	`e`.`IsMale`,
	`e`.`Age`
FROM
	`Base` `e`
WHERE
	CASE
		WHEN `e`.`Code` = 'Child2' OR `e`.`Code` = 'Child' OR `e`.`Code` = 'BaseChild'
			THEN `e`.`Id` <> 0
		ELSE `e`.`Id` = 0
	END
ORDER BY
	`e`.`Id`

