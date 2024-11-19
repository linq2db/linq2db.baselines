--  MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int64
SET     @Id = 1
DECLARE @PermanentId Guid
SET     @PermanentId = '5e075d6e-e91f-43e9-81ac-ad6913a818bc'
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
SET     @PermanentId = '9519bdfa-b350-4446-b13b-d96b0ab4b082'
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
SET     @PermanentId = '8377c3ea-c503-4c3b-8122-dc1fb0a8e3c5'
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



