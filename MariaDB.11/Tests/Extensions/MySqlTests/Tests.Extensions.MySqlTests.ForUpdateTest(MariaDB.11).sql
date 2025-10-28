BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

