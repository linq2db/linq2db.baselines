BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TrimTestTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TrimTestTable`
(
	`ID`   INT         NOT NULL,
	`Data` VARCHAR(50)     NULL,

	CONSTRAINT `PK_TrimTestTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TrimTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	1,
	'***OOO***'
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TrimTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	2,
	'***HHH***'
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TrimTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TrimTestTable`

