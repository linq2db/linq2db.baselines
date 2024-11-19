--  MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int64
SET     @Id = 1
DECLARE @PermanentId Guid
SET     @PermanentId = '32685656-aa6c-42d7-abe5-87144cd5c90b'
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
SET     @PermanentId = '6a85d19c-71d8-4684-9000-39d4ba7d4aa4'
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
SET     @PermanentId = 'd452f685-1f3a-4fa2-a48f-2f1f7f2f9ec4'
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



