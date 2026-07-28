-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_orgunits`
WHERE
	`l2dbnh_orgunits`.`id` = 900


-- MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 900
DECLARE @ParentId Int32
SET     @ParentId = NULL
DECLARE @Name VarChar(5) -- String
SET     @Name = 'First'

INSERT INTO `l2dbnh_orgunits`
(
	`id`,
	`parentid`,
	`name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)
ON DUPLICATE KEY UPDATE
	`parentid` = @ParentId,
	`name` = @Name


-- MySql.8.0.MySql.Data MySql80
SELECT
	`o`.`id`,
	`o`.`parentid`,
	`o`.`name`
FROM
	`l2dbnh_orgunits` `o`
WHERE
	`o`.`id` = 900
LIMIT 2


-- MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 900
DECLARE @ParentId Int32
SET     @ParentId = NULL
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Second'

INSERT INTO `l2dbnh_orgunits`
(
	`id`,
	`parentid`,
	`name`
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)
ON DUPLICATE KEY UPDATE
	`parentid` = @ParentId,
	`name` = @Name


-- MySql.8.0.MySql.Data MySql80
SELECT
	`o`.`id`,
	`o`.`parentid`,
	`o`.`name`
FROM
	`l2dbnh_orgunits` `o`
WHERE
	`o`.`id` = 900
LIMIT 2


-- MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 900
DECLARE @ParentId Int32
SET     @ParentId = NULL

INSERT INTO `l2dbnh_orgunits`
(
	`id`,
	`parentid`,
	`name`
)
VALUES
(
	@Id,
	@ParentId,
	'Inserted'
)
ON DUPLICATE KEY UPDATE
	`parentid` = @ParentId


-- MySql.8.0.MySql.Data MySql80
SELECT
	`o`.`id`,
	`o`.`parentid`,
	`o`.`name`
FROM
	`l2dbnh_orgunits` `o`
WHERE
	`o`.`id` = 900
LIMIT 2


-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_orgunits`
WHERE
	`l2dbnh_orgunits`.`id` = 900


