﻿BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `T1`
(
	`InstrumentId`         INT           NOT NULL,
	`InstrumentCode`       VARCHAR(4000)     NULL,
	`CreateDate`           DATETIME      NOT NULL,
	`SourceInstrumentCode` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_T1` PRIMARY KEY CLUSTERED (`InstrumentId`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `T2`
(
	`InstrumentId` INT NOT NULL,
	`IndexId`      INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `T3`
(
	`InstrumentId` INT NOT NULL,
	`IndexId`      INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO `T3`
(
	`InstrumentId`,
	`IndexId`
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO `T3`
(
	`InstrumentId`,
	`IndexId`
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @InstrumentId Int32
SET     @InstrumentId = 3
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO `T3`
(
	`InstrumentId`,
	`IndexId`
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO `T2`
(
	`InstrumentId`,
	`IndexId`
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @IndexId Int32
SET     @IndexId = 1

INSERT INTO `T2`
(
	`InstrumentId`,
	`IndexId`
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @InstrumentId Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode VarChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate DateTime
SET     @CreateDate = '2020-02-28 17:54:55.123'
DECLARE @SourceInstrumentCode VarChar(7) -- String
SET     @SourceInstrumentCode = 'NOTNULL'

INSERT INTO `T1`
(
	`InstrumentId`,
	`InstrumentCode`,
	`CreateDate`,
	`SourceInstrumentCode`
)
VALUES
(
	@InstrumentId,
	@InstrumentCode,
	@CreateDate,
	@SourceInstrumentCode
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @InstrumentId Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode VarChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate DateTime
SET     @CreateDate = '2020-02-28 17:54:55.123'
DECLARE @SourceInstrumentCode VarChar -- String
SET     @SourceInstrumentCode = NULL

INSERT INTO `T1`
(
	`InstrumentId`,
	`InstrumentCode`,
	`CreateDate`,
	`SourceInstrumentCode`
)
VALUES
(
	@InstrumentId,
	@InstrumentCode,
	@CreateDate,
	@SourceInstrumentCode
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @cond_1 VarChar(4) -- String
SET     @cond_1 = 'aaa%'
DECLARE @uptoDate DateTime
SET     @uptoDate = '2020-02-29 17:54:55.123'

SELECT
	`t4`.`SourceInstrumentCode`
FROM
	(
		SELECT DISTINCT
			`ins`.`SourceInstrumentCode`
		FROM
			`T1` `_`
				INNER JOIN `T2` `idx` ON `_`.`InstrumentId` = `idx`.`InstrumentId`
				INNER JOIN `T3` `w` ON `idx`.`IndexId` = `w`.`IndexId`
				INNER JOIN `T1` `ins` ON `w`.`InstrumentId` = `ins`.`InstrumentId`
		WHERE
			`ins`.`SourceInstrumentCode` IS NOT NULL AND `_`.`InstrumentCode` LIKE @cond_1 ESCAPE '~' AND
			`_`.`CreateDate` <= @uptoDate
	) `t4`
ORDER BY
	`t4`.`SourceInstrumentCode`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `T3`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `T2`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `T1`

