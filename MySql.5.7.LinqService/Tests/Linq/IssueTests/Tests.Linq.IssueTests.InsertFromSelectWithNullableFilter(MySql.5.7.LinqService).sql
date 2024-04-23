BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int16
SET     @ID = 0

INSERT INTO `AllTypes`
(
	`smallintDataType`,
	`intDataType`
)
SELECT
	123,
	`t1`.`ID`
FROM
	(
		SELECT DISTINCT
			`a_Association`.`smallintDataType` as `ID`
		FROM
			`AllTypes` `_`
				INNER JOIN `AllTypes` `a_Association` ON `_`.`smallintDataType` = `a_Association`.`intDataType`
		WHERE
			`_`.`smallintDataType` = @ID
	) `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int16
SET     @ID = 1234

INSERT INTO `AllTypes`
(
	`smallintDataType`,
	`intDataType`
)
SELECT
	123,
	`t1`.`ID`
FROM
	(
		SELECT DISTINCT
			`a_Association`.`smallintDataType` as `ID`
		FROM
			`AllTypes` `_`
				INNER JOIN `AllTypes` `a_Association` ON `_`.`smallintDataType` = `a_Association`.`intDataType`
		WHERE
			`_`.`smallintDataType` = @ID
	) `t1`

