﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `xxPatient44`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `xxPatient44`
(
	`PersonID`  INT          NOT NULL,
	`Diagnosis` VARCHAR(255)     NULL,

	CONSTRAINT `PK_xxPatient44` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient44`
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
-- MySqlConnector MySql
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient44`
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
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`xxPatient44` `t1`

BeforeExecute
-- MySqlConnector MySql
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient44`
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
-- MySqlConnector MySql
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient44`
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
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`xxPatient44` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `xxPatient44`

