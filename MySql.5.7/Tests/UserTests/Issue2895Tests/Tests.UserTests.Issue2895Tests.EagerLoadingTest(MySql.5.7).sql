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

