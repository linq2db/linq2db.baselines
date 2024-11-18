--  MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int64
SET     @Id = 1
DECLARE @PermanentId Guid
SET     @PermanentId = 'e64872cc-a12f-4ed1-a992-46f9fa2f1ae0'
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



--  MySql.8.0.MySqlConnector MySql80

SELECT LAST_INSERT_ID()



--  MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int64
SET     @Id = 2
DECLARE @PermanentId Guid
SET     @PermanentId = 'bef30748-373e-4011-8e71-b3db5aabe93e'
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



--  MySql.8.0.MySqlConnector MySql80

SELECT LAST_INSERT_ID()



--  MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int64
SET     @Id = 3
DECLARE @PermanentId Guid
SET     @PermanentId = '4fa37ea1-fdd6-48b6-8a34-1888caef9cb7'
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



--  MySql.8.0.MySqlConnector MySql80

SELECT LAST_INSERT_ID()



SELECT `s`.`Id`, `s`.`Code`, `s`.`IsDeleted`, `s`.`Name`, `s`.`PermanentId`
FROM `Subdivisions` AS `s`
WHERE CAST(`s`.`Id` AS signed) = 1


--  MySql.8.0.MySqlConnector MySql80

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



--  MySql.8.0.MySqlConnector MySql80
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



--  MySql.8.0.MySqlConnector MySql80

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



--  MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`PermanentId`,
	`t1`.`Code`,
	`t1`.`Name`,
	`t1`.`IsDeleted`
FROM
	`Subdivisions` `t1`



