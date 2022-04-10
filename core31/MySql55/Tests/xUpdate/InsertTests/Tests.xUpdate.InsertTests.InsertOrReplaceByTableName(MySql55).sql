BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `xxPatient`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `xxPatient`
(
	`PersonID`  INT          NOT NULL,
	`Diagnosis` VARCHAR(255)     NULL,

	CONSTRAINT `PK_xxPatient` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`xxPatient` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`xxPatient` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `xxPatient`

