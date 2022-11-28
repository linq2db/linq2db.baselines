BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `InternalEmail`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `InternalEmail`
(
	`Id`        INT NOT NULL,
	`RequestId` INT     NULL,
	`UserId`    INT     NULL,

	CONSTRAINT `PK_InternalEmail` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 10
DECLARE @RequestId Int32
SET     @RequestId = 1
DECLARE @UserId Int32
SET     @UserId = 1

INSERT INTO `InternalEmail`
(
	`Id`,
	`RequestId`,
	`UserId`
)
VALUES
(
	@Id,
	@RequestId,
	@UserId
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Request`
(
	`Id`     INT NOT NULL,
	`UserId` INT NOT NULL,

	CONSTRAINT `PK_Request` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @UserId Int32
SET     @UserId = 1

INSERT INTO `Request`
(
	`Id`,
	`UserId`
)
VALUES
(
	@Id,
	@UserId
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `User`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_User` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `User`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Admin`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Admin`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Admin` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Admin`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `EmailAdminAssociation`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `EmailAdminAssociation`
(
	`EmailId` INT NOT NULL,
	`AdminId` INT NOT NULL,

	CONSTRAINT `PK_EmailAdminAssociation` PRIMARY KEY CLUSTERED (`EmailId`, `AdminId`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @EmailId Int32
SET     @EmailId = 10
DECLARE @AdminId Int32
SET     @AdminId = 1

INSERT INTO `EmailAdminAssociation`
(
	`EmailId`,
	`AdminId`
)
VALUES
(
	@EmailId,
	@AdminId
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Email`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Email`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Email` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 10

INSERT INTO `Email`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `EmailAttachmentAssociation`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `EmailAttachmentAssociation`
(
	`EmailId`      INT NOT NULL,
	`AttachmentId` INT NOT NULL,

	CONSTRAINT `PK_EmailAttachmentAssociation` PRIMARY KEY CLUSTERED (`EmailId`, `AttachmentId`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @EmailId Int32
SET     @EmailId = 10
DECLARE @AttachmentId Int32
SET     @AttachmentId = 100

INSERT INTO `EmailAttachmentAssociation`
(
	`EmailId`,
	`AttachmentId`
)
VALUES
(
	@EmailId,
	@AttachmentId
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Attachment`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Attachment`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Attachment` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 100

INSERT INTO `Attachment`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Document`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Document`
(
	`AttachmentId` INT           NOT NULL,
	`Position`     INT           NOT NULL,
	`Name`         VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Document` PRIMARY KEY CLUSTERED (`AttachmentId`, `Position`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @AttachmentId Int32
SET     @AttachmentId = 100
DECLARE @Position_1 Int32
SET     @Position_1 = 1
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc 1'

INSERT INTO `Document`
(
	`AttachmentId`,
	`Position`,
	`Name`
)
VALUES
(
	@AttachmentId,
	@Position_1,
	@Name
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @AttachmentId Int32
SET     @AttachmentId = 100
DECLARE @Position_1 Int32
SET     @Position_1 = 2
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc 2'

INSERT INTO `Document`
(
	`AttachmentId`,
	`Position`,
	`Name`
)
VALUES
(
	@AttachmentId,
	@Position_1,
	@Name
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @AttachmentId Int32
SET     @AttachmentId = 101
DECLARE @Position_1 Int32
SET     @Position_1 = 1
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc x'

INSERT INTO `Document`
(
	`AttachmentId`,
	`Position`,
	`Name`
)
VALUES
(
	@AttachmentId,
	@Position_1,
	@Name
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`key_data_result_1`.`Id`,
	`key_data_result_1`.`EmailId`,
	`key_data_result_1`.`AdminId`,
	`key_data_result_1`.`Id_1`,
	`key_data_result_1`.`Id_1_1`,
	`__c`.`Name`
FROM
	(
		SELECT DISTINCT
			`a_Email_1`.`Id`,
			`detail`.`EmailId`,
			`detail`.`AdminId`,
			`key_data_result`.`Id` as `Id_1`,
			`key_data_result`.`Id_1` as `Id_1_1`
		FROM
			(
				SELECT DISTINCT
					`a_Admin`.`Id`,
					`r`.`Id` as `Id_1`
				FROM
					`Request` `r`
						LEFT JOIN `User` `a_User` ON `r`.`UserId` = `a_User`.`Id`
						LEFT JOIN `Admin` `a_Admin` ON `a_User`.`Id` = `a_Admin`.`Id`
			) `key_data_result`
				INNER JOIN (`EmailAdminAssociation` `detail`
					LEFT JOIN (`Email` `a_Email`
						LEFT JOIN `InternalEmail` `a_InternalEmail` ON `a_Email`.`Id` = `a_InternalEmail`.`Id`)
					ON `detail`.`EmailId` = `a_Email`.`Id`)
				ON `key_data_result`.`Id` = `detail`.`AdminId`
				LEFT JOIN `Email` `a_Email_1` ON `a_InternalEmail`.`Id` = `a_Email_1`.`Id`
	) `key_data_result_1`
		INNER JOIN (`EmailAttachmentAssociation` `detail_1`
			LEFT JOIN `Attachment` `a_Attachment` ON `detail_1`.`AttachmentId` = `a_Attachment`.`Id`)
		ON `key_data_result_1`.`Id` = `detail_1`.`EmailId`
		INNER JOIN `Document` `__c` ON `a_Attachment`.`Id` = `__c`.`AttachmentId`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`key_data_result`.`Id`,
	`key_data_result`.`Id_1`,
	`a_Email_1`.`Id`,
	`detail`.`EmailId`,
	`detail`.`AdminId`
FROM
	(
		SELECT DISTINCT
			`a_Admin`.`Id`,
			`r`.`Id` as `Id_1`
		FROM
			`Request` `r`
				LEFT JOIN `User` `a_User` ON `r`.`UserId` = `a_User`.`Id`
				LEFT JOIN `Admin` `a_Admin` ON `a_User`.`Id` = `a_Admin`.`Id`
	) `key_data_result`
		INNER JOIN (`EmailAdminAssociation` `detail`
			LEFT JOIN (`Email` `a_Email`
				LEFT JOIN `InternalEmail` `a_InternalEmail` ON `a_Email`.`Id` = `a_InternalEmail`.`Id`)
			ON `detail`.`EmailId` = `a_Email`.`Id`)
		ON `key_data_result`.`Id` = `detail`.`AdminId`
		LEFT JOIN `Email` `a_Email_1` ON `a_InternalEmail`.`Id` = `a_Email_1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`a_Admin`.`Id`,
	`r`.`Id`
FROM
	`Request` `r`
		LEFT JOIN `User` `a_User` ON `r`.`UserId` = `a_User`.`Id`
		LEFT JOIN `Admin` `a_Admin` ON `a_User`.`Id` = `a_Admin`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Document`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Attachment`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `EmailAttachmentAssociation`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Email`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `EmailAdminAssociation`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Admin`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `InternalEmail`

