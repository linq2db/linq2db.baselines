-- MySql.5.7.MySqlConnector
-- Batch 1
-- Id = 1
-- PermanentId = bc7b663d-0fde-4327-8f92-5d8cc3a11d11
-- Code = C1
-- Name = N1
-- IsDeleted = NULL
INSERT INTO `Subdivisions`
(
	`Id`,
	`PermanentId`,
	`Code`,
	`Name`,
	`IsDeleted`
)
VALUES
(
	@Id,
	@PermanentId,
	@Code,
	@Name,
	@IsDeleted
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`


-- MySql.5.7.MySqlConnector
-- Batch 1
-- Id = 2
-- PermanentId = a948600d-de21-4f74-8ac2-9516b287076e
-- Code = C2
-- Name = N2
-- IsDeleted = NULL
INSERT INTO `Subdivisions`
(
	`Id`,
	`PermanentId`,
	`Code`,
	`Name`,
	`IsDeleted`
)
VALUES
(
	@Id,
	@PermanentId,
	@Code,
	@Name,
	@IsDeleted
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`


-- MySql.5.7.MySqlConnector
-- Batch 1
-- Id = 3
-- PermanentId = bd3973a5-4323-4dd8-9f4f-df9f93e2a627
-- Code = C3
-- Name = N3
-- IsDeleted = NULL
INSERT INTO `Subdivisions`
(
	`Id`,
	`PermanentId`,
	`Code`,
	`Name`,
	`IsDeleted`
)
VALUES
(
	@Id,
	@PermanentId,
	@Code,
	@Name,
	@IsDeleted
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`


SELECT `s`.`Id`, `s`.`Code`, `s`.`IsDeleted`, `s`.`Name`, `s`.`PermanentId`
FROM `Subdivisions` AS `s`
WHERE CAST(`s`.`Id` AS signed) = 1


-- MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int64
SET     @Id = 1

SELECT
	`s`.`Id`,
	`s`.`PermanentId`,
	`s`.`Code`,
	`s`.`Name`,
	`s`.`IsDeleted`
FROM
	`Subdivisions` `s`
WHERE
	CAST(`s`.`Id` AS SIGNED) = @Id



-- MySql.5.7.MySqlConnector MySql57
DECLARE @id Int64
SET     @id = 1

SELECT
	`s`.`Id`,
	`s`.`PermanentId`,
	`s`.`Code`,
	`s`.`Name`,
	`s`.`IsDeleted`
FROM
	`Subdivisions` `s`
WHERE
	`s`.`Id` = @id



-- MySql.5.7.MySqlConnector MySql57
SELECT
	`s`.`Id`,
	`s`.`PermanentId`,
	`s`.`Code`,
	`s`.`Name`,
	`s`.`IsDeleted`
FROM
	`Subdivisions` `s`
WHERE
	`s`.`Id` IN (2, 3)



-- MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`PermanentId`,
	`t1`.`Code`,
	`t1`.`Name`,
	`t1`.`IsDeleted`
FROM
	`Subdivisions` `t1`



