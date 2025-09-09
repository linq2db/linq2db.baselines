BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`id`,
	`t1`.`name`,
	`t1`.`created_by`,
	`t1`.`updated_by`
FROM
	`test_insert_or_replace` `t1`
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`id`,
	`t1`.`name`,
	`t1`.`created_by`,
	`t1`.`updated_by`
FROM
	`test_insert_or_replace` `t1`
LIMIT 2

