BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Contract_Distributor_Agent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Contract_Distributor_Agent`
(
	`Agent_Id`                      INT           NOT NULL,
	`Distributor_Id`                INT           NOT NULL,
	`Contract_Id`                   INT           NOT NULL,
	`Distributor_Type_Code`         VARCHAR(4000)     NULL,
	`Distributor_Agent_Type_Prefix` VARCHAR(4000)     NULL,
	`Represents_Type_Prefix`        VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Contract_Distributor_Agent`
(
	`Agent_Id`,
	`Distributor_Id`,
	`Contract_Id`,
	`Distributor_Type_Code`,
	`Distributor_Agent_Type_Prefix`,
	`Represents_Type_Prefix`
)
VALUES
(1,1,198827882,'CC','OFFICE','REPRESENTS')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Agent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Agent`
(
	`Agent_Id`   INT           NOT NULL,
	`First_Name` VARCHAR(4000)     NULL,
	`Last_Name`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Agent`
(
	`Agent_Id`,
	`First_Name`,
	`Last_Name`
)
VALUES
(1,'x','x')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Distributor`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Distributor`
(
	`Distributor_Id`   INT           NOT NULL,
	`Type_Code`        VARCHAR(4000)     NULL,
	`Distributor_Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Distributor`
(
	`Distributor_Id`,
	`Type_Code`,
	`Distributor_Name`
)
VALUES
(1,'RE','x')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Distributor_Commercial_Propert`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Distributor_Commercial_Propert`
(
	`Distributor_Id`         INT           NOT NULL,
	`Commercial_Property_Id` INT           NOT NULL,
	`Distributor_Type_Code`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Distributor_Commercial_Propert`
(
	`Distributor_Id`,
	`Commercial_Property_Id`,
	`Distributor_Type_Code`
)
VALUES
(1,1,'RE')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Commercial_Property`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Commercial_Property`
(
	`Commercial_Property_Id` INT          NOT NULL,
	`Street_Number`          VARCHAR(100)     NULL,
	`Street_Name`            VARCHAR(100)     NULL,
	`State`                  VARCHAR(100)     NULL,
	`Zip_Code`               VARCHAR(100)     NULL,
	`Zip_Plus_4`             VARCHAR(100)     NULL,
	`City_Code`              VARCHAR(100)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Commercial_Property`
(
	`Commercial_Property_Id`,
	`Street_Number`,
	`Street_Name`,
	`State`,
	`Zip_Code`,
	`Zip_Plus_4`,
	`City_Code`
)
VALUES
(1,'x','x','x','x','x','x')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Contract_Dates`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Contract_Dates`
(
	`Contract_Id`    INT           NOT NULL,
	`Type_Code`      VARCHAR(4000)     NULL,
	`Effective_Date` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Contract_Dates`
(
	`Contract_Id`,
	`Type_Code`,
	`Effective_Date`
)
VALUES
(198827882,'ESTCOE','x')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Cities`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Cities`
(
	`City_Code` VARCHAR(4000)     NULL,
	`City_Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Cities`
(
	`City_Code`,
	`City_Name`
)
VALUES
('x','Urupinsk')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a`.`First_Name`,
	`a`.`Last_Name`,
	`d`.`Distributor_Name`,
	`cp`.`Street_Number`,
	`cp`.`Street_Name`,
	`c_1`.`City_Name`,
	`cp`.`State`,
	`cp`.`Zip_Code`,
	`cp`.`Zip_Plus_4`,
	`cd`.`Effective_Date`
FROM
	`Contract_Distributor_Agent` `cda`
		INNER JOIN `Agent` `a` ON `cda`.`Agent_Id` = `a`.`Agent_Id`
		INNER JOIN `Distributor` `d` ON `cda`.`Distributor_Id` = `d`.`Distributor_Id`
		INNER JOIN `Distributor_Commercial_Propert` `dcp` ON `d`.`Distributor_Id` = `dcp`.`Distributor_Id`
		INNER JOIN `Commercial_Property` `cp` ON `dcp`.`Commercial_Property_Id` = `cp`.`Commercial_Property_Id`
		INNER JOIN `Contract_Dates` `cd` ON `cda`.`Contract_Id` = `cd`.`Contract_Id`
		INNER JOIN `Cities` `c_1` ON `c_1`.`City_Code` = `cp`.`City_Code` AND `c_1`.`City_Code` IS NOT NULL AND `cp`.`City_Code` IS NOT NULL OR `c_1`.`City_Code` IS NULL AND `cp`.`City_Code` IS NULL
WHERE
	`cda`.`Contract_Id` = 198827882 AND
	`cda`.`Distributor_Type_Code` = 'CC' AND
	`cda`.`Distributor_Type_Code` IS NOT NULL AND
	`cda`.`Distributor_Agent_Type_Prefix` = 'OFFICE' AND
	`cda`.`Distributor_Agent_Type_Prefix` IS NOT NULL AND
	`cda`.`Represents_Type_Prefix` = 'REPRESENTS' AND
	`cda`.`Represents_Type_Prefix` IS NOT NULL AND
	`cd`.`Type_Code` = 'ESTCOE' AND
	`cd`.`Type_Code` IS NOT NULL AND
	`d`.`Type_Code` = 'RE' AND
	`d`.`Type_Code` IS NOT NULL AND
	`dcp`.`Distributor_Type_Code` = 'RE' AND
	`dcp`.`Distributor_Type_Code` IS NOT NULL

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Cities`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Contract_Dates`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Commercial_Property`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Distributor_Commercial_Propert`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Distributor`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Agent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Contract_Distributor_Agent`

