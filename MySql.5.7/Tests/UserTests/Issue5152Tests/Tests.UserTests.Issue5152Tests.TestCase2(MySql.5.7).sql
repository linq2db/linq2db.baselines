-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`SampleClass` `sample_1`
SET
	`sample_1`.`MyString` = Replace(Replace(`sample_1`.`MyString`, ';Example', NULL), 'Example', NULL)
WHERE
	LOCATE('Example', `sample_1`.`MyString`) > 0

