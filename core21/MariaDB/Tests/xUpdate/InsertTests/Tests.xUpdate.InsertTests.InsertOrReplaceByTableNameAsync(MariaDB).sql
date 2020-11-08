BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

DROP TABLE IF EXISTS `xxPatient12`

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

CREATE TABLE `xxPatient12`
(
	`PersonID`  INT          NOT NULL,
	`Diagnosis` VARCHAR(255)     NULL,

	CONSTRAINT `PK_xxPatient12` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient12`
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
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient12`
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
-- MariaDB MySql.Official MySql (asynchronously)

SELECT
	Count(*)
FROM
	`xxPatient12` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient12`
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
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient12`
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
-- MariaDB MySql.Official MySql (asynchronously)

SELECT
	Count(*)
FROM
	`xxPatient12` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

DROP TABLE IF EXISTS `xxPatient12`

