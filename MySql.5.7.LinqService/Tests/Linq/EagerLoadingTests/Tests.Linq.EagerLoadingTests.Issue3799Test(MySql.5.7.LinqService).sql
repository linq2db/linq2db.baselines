BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Test3799Item`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Test3799Item`
(
	`Id`       INT           NOT NULL,
	`ParentId` INT               NULL,
	`Name`     VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Test3799Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @ParentId Int32
SET     @ParentId = NULL
DECLARE @Name VarChar(4) -- String
SET     @Name = 'root'

INSERT INTO `Test3799Item`
(
	`Id`,
	`ParentId`,
	`Name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @ParentId Int32
SET     @ParentId = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'child 1'

INSERT INTO `Test3799Item`
(
	`Id`,
	`ParentId`,
	`Name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 3
DECLARE @ParentId Int32
SET     @ParentId = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO `Test3799Item`
(
	`Id`,
	`ParentId`,
	`Name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 4
DECLARE @ParentId Int32
SET     @ParentId = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO `Test3799Item`
(
	`Id`,
	`ParentId`,
	`Name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 5
DECLARE @ParentId Int32
SET     @ParentId = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'child 2'

INSERT INTO `Test3799Item`
(
	`Id`,
	`ParentId`,
	`Name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 6
DECLARE @ParentId Int32
SET     @ParentId = 5
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO `Test3799Item`
(
	`Id`,
	`ParentId`,
	`Name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 7
DECLARE @ParentId Int32
SET     @ParentId = 5
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO `Test3799Item`
(
	`Id`,
	`ParentId`,
	`Name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`Children`,
	`d`.`Name`
FROM
	(
		SELECT DISTINCT
			(
				SELECT
					`a_Children`.`Id`
				FROM
					`Test3799Item` `a_Children`
				WHERE
					`item_1`.`Id` = `a_Children`.`ParentId` AND `a_Children`.`ParentId` IS NOT NULL
				LIMIT 1
			) as `Children`
		FROM
			`Test3799Item` `item_1`
	) `m_1`
		INNER JOIN `Test3799Item` `d` ON `m_1`.`Children` = `d`.`ParentId` AND `m_1`.`Children` IS NOT NULL AND `d`.`ParentId` IS NOT NULL OR `m_1`.`Children` IS NULL AND `d`.`ParentId` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`item_1`.`Name`,
	(
		SELECT
			`a_Children`.`Name`
		FROM
			`Test3799Item` `a_Children`
		WHERE
			`item_1`.`Id` = `a_Children`.`ParentId` AND `a_Children`.`ParentId` IS NOT NULL
		LIMIT 1
	),
	(
		SELECT
			`a_Children_1`.`Id`
		FROM
			`Test3799Item` `a_Children_1`
		WHERE
			`item_1`.`Id` = `a_Children_1`.`ParentId` AND `a_Children_1`.`ParentId` IS NOT NULL
		LIMIT 1
	)
FROM
	`Test3799Item` `item_1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Test3799Item`

