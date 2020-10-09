BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `xxPatient21`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `xxPatient21`
(
	`PersonID`  INT          NOT NULL,
	`Diagnosis` VARCHAR(255)     NULL,

	CONSTRAINT `PK_xxPatient21` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient21`
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
-- MariaDB MySql.Official MySql
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient21`
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
-- MariaDB MySql.Official MySql

SELECT 
	Count(*)
FROM
	`xxPatient21` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient21`
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
-- MariaDB MySql.Official MySql
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient21`
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
-- MariaDB MySql.Official MySql

SELECT 
	Count(*)
FROM
	`xxPatient21` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `xxPatient21`

