BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `xxPatient11`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `xxPatient11`
(
	`PersonID`  INT          NOT NULL,
	`Diagnosis` VARCHAR(255)     NULL,

	CONSTRAINT `PK_xxPatient11` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient11`
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

INSERT INTO `xxPatient11`
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
	`xxPatient11` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient11`
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

INSERT INTO `xxPatient11`
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
	`xxPatient11` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `xxPatient11`

