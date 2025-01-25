BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TrimTestTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TrimTestTable`
(
	`ID`   INT         NOT NULL,
	`Data` VARCHAR(50)     NULL,

	CONSTRAINT `PK_TrimTestTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = '***XXX***'

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 2
DECLARE @Data VarChar(9) -- String
SET     @Data = '***HHH***'

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 3
DECLARE @Data VarChar(9) -- String
SET     @Data = '***VVV***'

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = @Data
WHERE
	`t`.`Data` = '***XXX***'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Data VarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = @Data
WHERE
	`t`.`Data` = @p

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TrimTestTable`

