BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `ForUpdateTestTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `ForUpdateTestTable`
(
	`Id`               INT           NOT NULL,
	`OtherNaming`      VARCHAR(4000) NOT NULL,
	`timestampUpdated` Timestamp     NOT NULL,

	CONSTRAINT `PK_ForUpdateTestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
BeginTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t_1`.`Count_1`
FROM
	(
		SELECT
			Count(*) as `Count_1`
		FROM
			`ForUpdateTestTable` `t`
		WHERE
			`t`.`Id` = 1
	) `t_1`
WHERE
	`t_1`.`Count_1` = 0
FOR UPDATE

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Datetime -- DateTime
SET     @p = '2020-02-29 17:54:55.123'

INSERT INTO `ForUpdateTestTable`
(
	`Id`,
	`OtherNaming`,
	`timestampUpdated`
)
SELECT
	1,
	'Some data',
	@p
FROM
	(
		SELECT
			Count(*) as `Count_1`
		FROM
			`ForUpdateTestTable` `t`
		WHERE
			`t`.`Id` = 1
	) `t_1`
WHERE
	`t_1`.`Count_1` = 0
FOR UPDATE

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `ForUpdateTestTable`

