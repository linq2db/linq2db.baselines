﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table1`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table1`
(
	`ID`  INT NOT NULL,
	`ID2` INT     NULL,

	CONSTRAINT `PK_Table1` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1
DECLARE @ID2 Int32
SET     @ID2 = 1

INSERT INTO `Table1`
(
	`ID`,
	`ID2`
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 2
DECLARE @ID2 Int32
SET     @ID2 = 2

INSERT INTO `Table1`
(
	`ID`,
	`ID2`
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table2`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table2`
(
	`ID`  INT NOT NULL,
	`ID3` INT     NULL,

	CONSTRAINT `PK_Table2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1
DECLARE @ID3 Int32
SET     @ID3 = 1

INSERT INTO `Table2`
(
	`ID`,
	`ID3`
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table3`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table3`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_Table3` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO `Table3`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table4`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Table4`
(
	`ID`  INT NOT NULL,
	`ID3` INT     NULL,

	CONSTRAINT `PK_Table4` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 1
DECLARE @ID3 Int32
SET     @ID3 = 1

INSERT INTO `Table4`
(
	`ID`,
	`ID3`
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 2
DECLARE @ID3 Int32
SET     @ID3 = NULL

INSERT INTO `Table4`
(
	`ID`,
	`ID3`
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`m_1`.`ID`,
	`d`.`ID`,
	`d`.`ID3`
FROM
	(
		SELECT DISTINCT
			`a_Table3`.`ID`
		FROM
			`Table1` `r`
				LEFT JOIN `Table2` `a_Table2` ON (`r`.`ID2` = `a_Table2`.`ID` OR `r`.`ID2` IS NULL AND `a_Table2`.`ID` IS NULL)
				LEFT JOIN `Table3` `a_Table3` ON (`a_Table2`.`ID3` = `a_Table3`.`ID` OR `a_Table2`.`ID3` IS NULL AND `a_Table3`.`ID` IS NULL)
				LEFT JOIN `Table3` `a_Table3_1` ON (`a_Table2`.`ID3` = `a_Table3_1`.`ID` OR `a_Table2`.`ID3` IS NULL AND `a_Table3_1`.`ID` IS NULL)
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					`Table4` `id`
				WHERE
					`a_Table3_1`.`ID` IS NOT NULL AND `a_Table3_1`.`ID` = `id`.`ID3` AND
					`id`.`ID` = `r`.`ID`
			)
	) `m_1`
		INNER JOIN `Table4` `d` ON (`m_1`.`ID` = `d`.`ID3` OR `m_1`.`ID` IS NULL AND `d`.`ID3` IS NULL)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`r`.`ID`,
	`r`.`ID2`,
	`a_Table2`.`ID`,
	`a_Table2`.`ID3`,
	`a_Table3`.`ID`
FROM
	`Table1` `r`
		LEFT JOIN `Table2` `a_Table2` ON (`r`.`ID2` = `a_Table2`.`ID` OR `r`.`ID2` IS NULL AND `a_Table2`.`ID` IS NULL)
		LEFT JOIN `Table3` `a_Table3` ON (`a_Table2`.`ID3` = `a_Table3`.`ID` OR `a_Table2`.`ID3` IS NULL AND `a_Table3`.`ID` IS NULL)
		LEFT JOIN `Table3` `a_Table3_1` ON (`a_Table2`.`ID3` = `a_Table3_1`.`ID` OR `a_Table2`.`ID3` IS NULL AND `a_Table3_1`.`ID` IS NULL)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Table4` `id`
		WHERE
			`a_Table3_1`.`ID` IS NOT NULL AND `a_Table3_1`.`ID` = `id`.`ID3` AND
			`id`.`ID` = `r`.`ID`
	)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`m_1`.`ID`,
	`d`.`ID`,
	`d`.`ID3`
FROM
	(
		SELECT DISTINCT
			`a_Table3`.`ID`
		FROM
			`Table1` `t1`
				LEFT JOIN `Table2` `a_Table2` ON (`t1`.`ID2` = `a_Table2`.`ID` OR `t1`.`ID2` IS NULL AND `a_Table2`.`ID` IS NULL)
				LEFT JOIN `Table3` `a_Table3` ON (`a_Table2`.`ID3` = `a_Table3`.`ID` OR `a_Table2`.`ID3` IS NULL AND `a_Table3`.`ID` IS NULL)
	) `m_1`
		INNER JOIN `Table4` `d` ON (`m_1`.`ID` = `d`.`ID3` OR `m_1`.`ID` IS NULL AND `d`.`ID3` IS NULL)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`ID2`,
	`a_Table2`.`ID`,
	`a_Table2`.`ID3`,
	`a_Table3`.`ID`
FROM
	`Table1` `t1`
		LEFT JOIN `Table2` `a_Table2` ON (`t1`.`ID2` = `a_Table2`.`ID` OR `t1`.`ID2` IS NULL AND `a_Table2`.`ID` IS NULL)
		LEFT JOIN `Table3` `a_Table3` ON (`a_Table2`.`ID3` = `a_Table3`.`ID` OR `a_Table2`.`ID3` IS NULL AND `a_Table3`.`ID` IS NULL)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table4`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table3`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Table1`

