﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TrimTestTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TrimTestTable`
(
	`ID`   INT         NOT NULL,
	`Data` VARCHAR(50)     NULL,

	CONSTRAINT `PK_TrimTestTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `TrimTestTable`
(
	`ID`,
	`Data`
)
VALUES
(1,'***XXX***'),
(2,'***HHH***'),
(3,'***VVV***')

BeforeExecute
-- MySqlConnector MySql
DECLARE @Data VarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Int32
SET     @ID = 3

UPDATE
	`TrimTestTable` `t1`
SET
	`t1`.`Data` = @Data
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySqlConnector MySql

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***OOO***'
WHERE
	`t`.`Data` = '***XXX***'

BeforeExecute
-- MySqlConnector MySql
DECLARE @p VarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = '***SSS***'
WHERE
	`t`.`Data` = @p

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TrimTestTable`

