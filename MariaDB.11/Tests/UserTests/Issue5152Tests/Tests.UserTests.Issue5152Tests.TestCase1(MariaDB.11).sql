-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`SampleClass` `sample_1`
SET
	`sample_1`.`MyString` = Replace(Replace(`sample_1`.`MyString`, ';Example', NULL), 'Example', NULL)
WHERE
	LOCATE('Example', `sample_1`.`MyString`) > 0

