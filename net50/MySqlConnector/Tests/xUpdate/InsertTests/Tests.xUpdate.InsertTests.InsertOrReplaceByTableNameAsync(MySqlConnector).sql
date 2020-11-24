BeforeExecute
-- MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `xxPatient24`

BeforeExecute
-- MySqlConnector MySql (asynchronously)

CREATE TABLE `xxPatient24`
(
	`PersonID`  INT          NOT NULL,
	`Diagnosis` VARCHAR(255)     NULL,

	CONSTRAINT `PK_xxPatient24` PRIMARY KEY CLUSTERED (`PersonID`)
)

BeforeExecute
-- MySqlConnector MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient24`
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
-- MySqlConnector MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient24`
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
-- MySqlConnector MySql (asynchronously)

SELECT
	Count(*)
FROM
	`xxPatient24` `t1`

BeforeExecute
-- MySqlConnector MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO `xxPatient24`
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
-- MySqlConnector MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO `xxPatient24`
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
-- MySqlConnector MySql (asynchronously)

SELECT
	Count(*)
FROM
	`xxPatient24` `t1`

BeforeExecute
-- MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `xxPatient24`

