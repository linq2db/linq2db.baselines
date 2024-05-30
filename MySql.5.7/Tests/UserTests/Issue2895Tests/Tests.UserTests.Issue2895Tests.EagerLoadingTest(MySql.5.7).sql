BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `InternalEmail`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `InternalEmail`
(
	`Id`        INT NOT NULL,
	`RequestId` INT     NULL,
	`UserId`    INT     NULL,

	CONSTRAINT `PK_InternalEmail` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `InternalEmail`
(
	`Id`,
	`RequestId`,
	`UserId`
)
VALUES
(10,1,1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Request`
(
	`Id`     INT NOT NULL,
	`UserId` INT NOT NULL,

	CONSTRAINT `PK_Request` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Request`
(
	`Id`,
	`UserId`
)
VALUES
(1,1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `User`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_User` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `User`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Admin`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Admin`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Admin` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Admin`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EmailAdminAssociation`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EmailAdminAssociation`
(
	`EmailId` INT NOT NULL,
	`AdminId` INT NOT NULL,

	CONSTRAINT `PK_EmailAdminAssociation` PRIMARY KEY CLUSTERED (`EmailId`, `AdminId`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EmailAdminAssociation`
(
	`EmailId`,
	`AdminId`
)
VALUES
(10,1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Email`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Email`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Email` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Email`
(
	`Id`
)
VALUES
(10)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EmailAttachmentAssociation`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EmailAttachmentAssociation`
(
	`EmailId`      INT NOT NULL,
	`AttachmentId` INT NOT NULL,

	CONSTRAINT `PK_EmailAttachmentAssociation` PRIMARY KEY CLUSTERED (`EmailId`, `AttachmentId`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EmailAttachmentAssociation`
(
	`EmailId`,
	`AttachmentId`
)
VALUES
(10,100)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Attachment`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Attachment`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Attachment` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Attachment`
(
	`Id`
)
VALUES
(100)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Document`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Document`
(
	`AttachmentId` INT           NOT NULL,
	`Position`     INT           NOT NULL,
	`Name`         VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Document` PRIMARY KEY CLUSTERED (`AttachmentId`, `Position`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`Id`,
	`m_1`.`Id_1`,
	`a_Documents`.`Name`
FROM
	(
		SELECT DISTINCT
			`a_Email_1`.`Id`,
			`t1`.`Id` as `Id_1`
		FROM
			(
				SELECT DISTINCT
					`a_Admin`.`Id`
				FROM
					`Request` `r`
						LEFT JOIN `User` `a_User` ON `r`.`UserId` = `a_User`.`Id`
						LEFT JOIN `Admin` `a_Admin` ON `a_User`.`Id` = `a_Admin`.`Id`
			) `t1`
				INNER JOIN `EmailAdminAssociation` `d` ON `t1`.`Id` IS NOT NULL AND `t1`.`Id` = `d`.`AdminId`
				LEFT JOIN `Email` `a_Email` ON `d`.`EmailId` = `a_Email`.`Id`
				LEFT JOIN `InternalEmail` `a_InternalEmail` ON `a_Email`.`Id` = `a_InternalEmail`.`Id`
				LEFT JOIN `Email` `a_Email_1` ON `a_InternalEmail`.`Id` = `a_Email_1`.`Id`
	) `m_1`
		INNER JOIN `EmailAttachmentAssociation` `d_1` ON `m_1`.`Id` IS NOT NULL AND `m_1`.`Id` = `d_1`.`EmailId`
		LEFT JOIN `Attachment` `a_Attachment` ON `d_1`.`AttachmentId` = `a_Attachment`.`Id`
		INNER JOIN `Document` `a_Documents` ON `a_Attachment`.`Id` IS NOT NULL AND `a_Attachment`.`Id` = `a_Documents`.`AttachmentId`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`Id`,
	`a_Email_1`.`Id`
FROM
	(
		SELECT DISTINCT
			`a_Admin`.`Id`
		FROM
			`Request` `r`
				LEFT JOIN `User` `a_User` ON `r`.`UserId` = `a_User`.`Id`
				LEFT JOIN `Admin` `a_Admin` ON `a_User`.`Id` = `a_Admin`.`Id`
	) `m_1`
		INNER JOIN `EmailAdminAssociation` `d` ON `m_1`.`Id` IS NOT NULL AND `m_1`.`Id` = `d`.`AdminId`
		LEFT JOIN `Email` `a_Email` ON `d`.`EmailId` = `a_Email`.`Id`
		LEFT JOIN `InternalEmail` `a_InternalEmail` ON `a_Email`.`Id` = `a_InternalEmail`.`Id`
		LEFT JOIN `Email` `a_Email_1` ON `a_InternalEmail`.`Id` = `a_Email_1`.`Id`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`a_Admin`.`Id`
FROM
	`Request` `r`
		LEFT JOIN `User` `a_User` ON `r`.`UserId` = `a_User`.`Id`
		LEFT JOIN `Admin` `a_Admin` ON `a_User`.`Id` = `a_Admin`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Document`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Attachment`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EmailAttachmentAssociation`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Email`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EmailAdminAssociation`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Admin`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `InternalEmail`

