--  MariaDB.10.MySqlConnector MySql
DECLARE @Id Int64
SET     @Id = 1
DECLARE @PermanentId Guid
SET     @PermanentId = '377f4d3f-8d2c-4468-a3fd-7f9565efbb2d'
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



--  MariaDB.10.MySqlConnector MySql

SELECT LAST_INSERT_ID()



--  MariaDB.10.MySqlConnector MySql
DECLARE @Id Int64
SET     @Id = 2
DECLARE @PermanentId Guid
SET     @PermanentId = '2500637b-91b6-4b83-bfd4-caedc8c5b176'
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



--  MariaDB.10.MySqlConnector MySql

SELECT LAST_INSERT_ID()



--  MariaDB.10.MySqlConnector MySql
DECLARE @Id Int64
SET     @Id = 3
DECLARE @PermanentId Guid
SET     @PermanentId = '42bf2d15-fb6b-4942-b6ad-5f1b8062a481'
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



--  MariaDB.10.MySqlConnector MySql

SELECT LAST_INSERT_ID()



SELECT `s`.`Id`, `s`.`Code`, `s`.`IsDeleted`, `s`.`Name`, `s`.`PermanentId`
FROM `Subdivisions` AS `s`
WHERE CAST(`s`.`Id` AS signed) = 1


--  MariaDB.10.MySqlConnector MySql

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



--  MariaDB.10.MySqlConnector MySql
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



--  MariaDB.10.MySqlConnector MySql

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



--  MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`PermanentId`,
	`t1`.`Code`,
	`t1`.`Name`,
	`t1`.`IsDeleted`
FROM
	`Subdivisions` `t1`



