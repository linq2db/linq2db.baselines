BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TrimTestTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `TrimTestTable`
(
	`ID`   INT         NOT NULL,
	`Data` VARCHAR(50)     NULL,

	CONSTRAINT `PK_TrimTestTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TrimTestTable`

