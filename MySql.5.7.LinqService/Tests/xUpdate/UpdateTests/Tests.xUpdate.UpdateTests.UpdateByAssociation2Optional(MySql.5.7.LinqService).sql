BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT           NOT NULL,
	`Field` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 1'

INSERT INTO `MainTable`
(
	`Id`,
	`Field`
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 2'

INSERT INTO `MainTable`
(
	`Id`,
	`Field`
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Field VarChar(7) -- String
SET     @Field = 'value 3'

INSERT INTO `MainTable`
(
	`Id`,
	`Field`
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `a_MainOptional`,
	`AssociatedTable` `p`
SET
	`a_MainOptional`.`Field` = 'test'
WHERE
	`p`.`Id` = @id AND `p`.`Id` = `a_MainOptional`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `MainTable`

