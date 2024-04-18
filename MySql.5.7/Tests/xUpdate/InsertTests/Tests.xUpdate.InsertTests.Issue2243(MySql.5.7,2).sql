﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `test_insert_or_replace`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `test_insert_or_replace`
(
	`id`         INT           NOT NULL,
	`name`       VARCHAR(4000)     NULL,
	`created_by` VARCHAR(4000)     NULL,
	`updated_by` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_test_insert_or_replace` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER2'
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO `test_insert_or_replace`
(
	`id`,
	`name`,
	`created_by`
)
VALUES
(
	@Id,
	@Name,
	@CreatedBy
)
ON DUPLICATE KEY UPDATE
	`name` = @Name,
	`updated_by` = @UpdatedBy

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`id`,
	`t1`.`name`,
	`t1`.`created_by`,
	`t1`.`updated_by`
FROM
	`test_insert_or_replace` `t1`
LIMIT @take

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER2'
DECLARE @UpdatedBy VarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER2'

INSERT INTO `test_insert_or_replace`
(
	`id`,
	`name`,
	`created_by`
)
VALUES
(
	@Id,
	@Name,
	@CreatedBy
)
ON DUPLICATE KEY UPDATE
	`name` = @Name,
	`updated_by` = @UpdatedBy

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`id`,
	`t1`.`name`,
	`t1`.`created_by`,
	`t1`.`updated_by`
FROM
	`test_insert_or_replace` `t1`
LIMIT @take

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `test_insert_or_replace`

