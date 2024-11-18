--  MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int64
SET     @Id = 1
DECLARE @PermanentId Guid
SET     @PermanentId = 'c1ad68d4-cbdb-4138-98f5-33b4d8e2335b'
DECLARE @Code VarChar(2) -- String
SET     @Code = 'C1'
DECLARE @Name VarChar(2) -- String
SET     @Name = 'N1'
DECLARE @IsDeleted Bool -- Boolean
SET     @IsDeleted = NULL

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



--  MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()



--  MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int64
SET     @Id = 2
DECLARE @PermanentId Guid
SET     @PermanentId = '72b0cfea-924a-45f1-90f2-c91b1a5700b4'
DECLARE @Code VarChar(2) -- String
SET     @Code = 'C2'
DECLARE @Name VarChar(2) -- String
SET     @Name = 'N2'
DECLARE @IsDeleted Bool -- Boolean
SET     @IsDeleted = NULL

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



--  MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()



--  MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int64
SET     @Id = 3
DECLARE @PermanentId Guid
SET     @PermanentId = 'c31d8ae6-d0d8-45f5-8d9a-b7b2a0b1df8d'
DECLARE @Code VarChar(2) -- String
SET     @Code = 'C3'
DECLARE @Name VarChar(2) -- String
SET     @Name = 'N3'
DECLARE @IsDeleted Bool -- Boolean
SET     @IsDeleted = NULL

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



--  MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()



SELECT `s`.`Id`, `s`.`Code`, `s`.`IsDeleted`, `s`.`Name`, `s`.`PermanentId`
FROM `Subdivisions` AS `s`
WHERE CAST(`s`.`Id` AS signed) = 1


--  MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`Id`,
	`s`.`PermanentId`,
	`s`.`Code`,
	`s`.`Name`,
	`s`.`IsDeleted`
FROM
	`Subdivisions` `s`
WHERE
	CAST(`s`.`Id` AS SIGNED) = 1



--  MySql.5.7.MySqlConnector MySql57
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



--  MySql.5.7.MySqlConnector MySql57

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



--  MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`PermanentId`,
	`t1`.`Code`,
	`t1`.`Name`,
	`t1`.`IsDeleted`
FROM
	`Subdivisions` `t1`



