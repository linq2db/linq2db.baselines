BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE IF EXISTS `xxPatient`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

CREATE TABLE `xxPatient`
(
	`PersonID`  INT           NOT NULL,
	`Diagnosis` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_xxPatient` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = @Diagnosis

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = @Diagnosis

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`xxPatient` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = @Diagnosis

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = @Diagnosis

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`xxPatient` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE IF EXISTS `xxPatient`

