BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `InternalEmail`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `InternalEmail`
(
	`Id`        INT NOT NULL,
	`RequestId` INT     NULL,
	`UserId`    INT     NULL,

	CONSTRAINT `PK_InternalEmail` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `InternalEmail`
(
	`Id`,
	`RequestId`,
	`UserId`
)
VALUES
(10,1,1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Request`
(
	`Id`     INT NOT NULL,
	`UserId` INT NOT NULL,

	CONSTRAINT `PK_Request` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Request`
(
	`Id`,
	`UserId`
)
VALUES
(1,1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `User`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_User` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `User`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Admin`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Admin`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Admin` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Admin`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `EmailAdminAssociation`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `EmailAdminAssociation`
(
	`EmailId` INT NOT NULL,
	`AdminId` INT NOT NULL,

	CONSTRAINT `PK_EmailAdminAssociation` PRIMARY KEY CLUSTERED (`EmailId`, `AdminId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `EmailAdminAssociation`
(
	`EmailId`,
	`AdminId`
)
VALUES
(10,1)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Email`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Email`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Email` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Email`
(
	`Id`
)
VALUES
(10)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `EmailAttachmentAssociation`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `EmailAttachmentAssociation`
(
	`EmailId`      INT NOT NULL,
	`AttachmentId` INT NOT NULL,

	CONSTRAINT `PK_EmailAttachmentAssociation` PRIMARY KEY CLUSTERED (`EmailId`, `AttachmentId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `EmailAttachmentAssociation`
(
	`EmailId`,
	`AttachmentId`
)
VALUES
(10,100)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Attachment`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Attachment`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Attachment` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Attachment`
(
	`Id`
)
VALUES
(100)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Document`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Document`
(
	`AttachmentId` INT           NOT NULL,
	`Position`     INT           NOT NULL,
	`Name`         VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Document` PRIMARY KEY CLUSTERED (`AttachmentId`, `Position`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Document`
(
	`AttachmentId`,
	`Position`,
	`Name`
)
VALUES
(100,1,'Some Doc 1'),
(100,2,'Some Doc 2'),
(101,1,'Some Doc x')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`Id`,
	`a_Documents`.`Name`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Request` `r`
				LEFT JOIN `User` `a_User` ON `r`.`UserId` = `a_User`.`Id`
				LEFT JOIN `Admin` `a_Admin` ON `a_User`.`Id` = `a_Admin`.`Id`
				LEFT JOIN (
					SELECT
						`a_Email_1`.`Id`,
						ROW_NUMBER() OVER (PARTITION BY `a_EmailAdminAssociations`.`AdminId` ORDER BY `a_EmailAdminAssociations`.`AdminId`) as `rn`,
						`a_EmailAdminAssociations`.`AdminId`
					FROM
						`EmailAdminAssociation` `a_EmailAdminAssociations`
							LEFT JOIN `Email` `a_Email` ON `a_EmailAdminAssociations`.`EmailId` = `a_Email`.`Id`
							LEFT JOIN `InternalEmail` `a_InternalEmail` ON `a_Email`.`Id` = `a_InternalEmail`.`Id`
							LEFT JOIN `Email` `a_Email_1` ON `a_InternalEmail`.`Id` = `a_Email_1`.`Id`
				) `t1` ON `a_Admin`.`Id` = `t1`.`AdminId` AND `t1`.`rn` <= 1
	) `m_1`
		INNER JOIN `EmailAttachmentAssociation` `d` ON `m_1`.`Id` = `d`.`EmailId` AND `m_1`.`Id` IS NOT NULL
		LEFT JOIN `Attachment` `a_Attachment` ON `d`.`AttachmentId` = `a_Attachment`.`Id`
		INNER JOIN `Document` `a_Documents` ON `a_Attachment`.`Id` = `a_Documents`.`AttachmentId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`cond`,
	`t1`.`Id`
FROM
	`Request` `r`
		LEFT JOIN `User` `a_User` ON `r`.`UserId` = `a_User`.`Id`
		LEFT JOIN `Admin` `a_Admin` ON `a_User`.`Id` = `a_Admin`.`Id`
		LEFT JOIN (
			SELECT
				1 as `cond`,
				`a_Email_1`.`Id`,
				ROW_NUMBER() OVER (PARTITION BY `a_EmailAdminAssociations`.`AdminId` ORDER BY `a_EmailAdminAssociations`.`AdminId`) as `rn`,
				`a_EmailAdminAssociations`.`AdminId`
			FROM
				`EmailAdminAssociation` `a_EmailAdminAssociations`
					LEFT JOIN `Email` `a_Email` ON `a_EmailAdminAssociations`.`EmailId` = `a_Email`.`Id`
					LEFT JOIN `InternalEmail` `a_InternalEmail` ON `a_Email`.`Id` = `a_InternalEmail`.`Id`
					LEFT JOIN `Email` `a_Email_1` ON `a_InternalEmail`.`Id` = `a_Email_1`.`Id`
		) `t1` ON `a_Admin`.`Id` = `t1`.`AdminId` AND `t1`.`rn` <= 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Document`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Attachment`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `EmailAttachmentAssociation`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Email`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `EmailAdminAssociation`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Admin`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `InternalEmail`

