-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Count_1`
FROM
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`ForUpdateTestTable` `g_1`
		WHERE
			`g_1`.`Id` = 1
	) `t1`
WHERE
	`t1`.`Count_1` = 0
FOR UPDATE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
			COUNT(*) as `Count_1`
		FROM
			`ForUpdateTestTable` `g_1`
		WHERE
			`g_1`.`Id` = 1
	) `t1`
WHERE
	`t1`.`Count_1` = 0
FOR UPDATE

