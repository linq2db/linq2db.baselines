﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'
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
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`id`,
	`t1`.`name`,
	`t1`.`created_by`,
	`t1`.`updated_by`
FROM
	`test_insert_or_replace` `t1`
LIMIT 2

BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'
DECLARE @UpdatedBy VarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER1'

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
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`id`,
	`t1`.`name`,
	`t1`.`created_by`,
	`t1`.`updated_by`
FROM
	`test_insert_or_replace` `t1`
LIMIT 2

