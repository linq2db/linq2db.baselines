BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Contract_Distributor_Agent`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Contract_Distributor_Agent`
(
	`Agent_Id`                      INT          NOT NULL,
	`Distributor_Id`                INT          NOT NULL,
	`Contract_Id`                   INT          NOT NULL,
	`Distributor_Type_Code`         VARCHAR(255)     NULL,
	`Distributor_Agent_Type_Prefix` VARCHAR(255)     NULL,
	`Represents_Type_Prefix`        VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Agent`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Agent`
(
	`Agent_Id`   INT          NOT NULL,
	`First_Name` VARCHAR(255)     NULL,
	`Last_Name`  VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Agent`
(
	`Agent_Id`,
	`First_Name`,
	`Last_Name`
)
VALUES
(1,'x','x')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Distributor`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Distributor`
(
	`Distributor_Id`   INT          NOT NULL,
	`Type_Code`        VARCHAR(255)     NULL,
	`Distributor_Name` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Distributor`
(
	`Distributor_Id`,
	`Type_Code`,
	`Distributor_Name`
)
VALUES
(1,'RE','x')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Distributor_Commercial_Propert`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Distributor_Commercial_Propert`
(
	`Distributor_Id`         INT          NOT NULL,
	`Commercial_Property_Id` INT          NOT NULL,
	`Distributor_Type_Code`  VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Distributor_Commercial_Propert`
(
	`Distributor_Id`,
	`Commercial_Property_Id`,
	`Distributor_Type_Code`
)
VALUES
(1,1,'RE')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Commercial_Property`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Commercial_Property`
(
	`Commercial_Property_Id` INT          NOT NULL,
	`Street_Number`          VARCHAR(255)     NULL,
	`Street_Name`            VARCHAR(255)     NULL,
	`State`                  VARCHAR(255)     NULL,
	`Zip_Code`               VARCHAR(255)     NULL,
	`Zip_Plus_4`             VARCHAR(255)     NULL,
	`City_Code`              VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Contract_Dates`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Contract_Dates`
(
	`Contract_Id`    INT          NOT NULL,
	`Type_Code`      VARCHAR(255)     NULL,
	`Effective_Date` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Contract_Dates`
(
	`Contract_Id`,
	`Type_Code`,
	`Effective_Date`
)
VALUES
(198827882,'ESTCOE','x')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Cities`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Cities`
(
	`City_Code` VARCHAR(255)     NULL,
	`City_Name` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Cities`
(
	`City_Code`,
	`City_Name`
)
VALUES
('x','Urupinsk')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Cities`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Contract_Dates`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Commercial_Property`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Distributor_Commercial_Propert`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Distributor`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Agent`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Contract_Distributor_Agent`

