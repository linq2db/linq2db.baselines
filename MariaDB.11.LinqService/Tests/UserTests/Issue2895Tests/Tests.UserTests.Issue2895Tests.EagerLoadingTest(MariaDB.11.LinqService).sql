﻿BeforeExecute
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
		INNER JOIN `EmailAttachmentAssociation` `d` ON `m_1`.`Id` = `d`.`EmailId`
		INNER JOIN `Attachment` `a_Attachment` ON `d`.`AttachmentId` = `a_Attachment`.`Id`
		INNER JOIN `Document` `a_Documents` ON `a_Attachment`.`Id` = `a_Documents`.`AttachmentId`

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

