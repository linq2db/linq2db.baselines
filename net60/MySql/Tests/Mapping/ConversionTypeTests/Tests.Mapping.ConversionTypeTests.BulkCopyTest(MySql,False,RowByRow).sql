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
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

INSERT INTO `TrimTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	@ID,
	@Data
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

