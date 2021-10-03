﻿BeforeExecute
-- MariaDB MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MariaDB MySql

DELETE `t1`
FROM
	`Patient` `t1`

BeforeExecute
-- MariaDB MySql

DELETE `t1`
FROM
	`Doctor` `t1`

BeforeExecute
-- MariaDB MySql

DELETE `t1`
FROM
	`Person` `t1`

BeforeExecute
-- MariaDB MySql
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 1'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 1'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- MariaDB MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 2'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 2'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- MariaDB MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 3'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 3'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'O'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- MariaDB MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 4'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 4'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- MariaDB MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 5'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 5'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- MariaDB MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql
DECLARE @FirstName VarChar(7) -- String
SET     @FirstName = 'first 6'
DECLARE @LastName VarChar(6) -- String
SET     @LastName = 'last 6'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- MariaDB MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql
DECLARE @PersonID Int32
SET     @PersonID = 9
DECLARE @Taxonomy VarChar(10) -- String
SET     @Taxonomy = 'Dr. Lector'

INSERT INTO `Doctor`
(
	`PersonID`,
	`Taxonomy`
)
VALUES
(
	@PersonID,
	@Taxonomy
)

BeforeExecute
-- MariaDB MySql
DECLARE @PersonID Int32
SET     @PersonID = 10
DECLARE @Taxonomy VarChar(10) -- String
SET     @Taxonomy = 'Dr. who???'

INSERT INTO `Doctor`
(
	`PersonID`,
	`Taxonomy`
)
VALUES
(
	@PersonID,
	@Taxonomy
)

BeforeExecute
-- MariaDB MySql
DECLARE @PersonID Int32
SET     @PersonID = 7
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'sick'

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- MariaDB MySql
DECLARE @PersonID Int32
SET     @PersonID = 8
DECLARE @Diagnosis VarChar(9) -- String
SET     @Diagnosis = 'very sick'

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`
ORDER BY
	`t1`.`PersonID`

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`PersonID`,
	`t1`.`Taxonomy`
FROM
	`Doctor` `t1`
ORDER BY
	`t1`.`PersonID`

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`

