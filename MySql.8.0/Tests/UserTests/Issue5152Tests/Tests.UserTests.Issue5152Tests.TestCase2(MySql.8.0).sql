-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`SampleClass` `sample_1`
SET
	`sample_1`.`MyString` = Replace(Replace(`sample_1`.`MyString`, ';Example', NULL), 'Example', NULL)
WHERE
	LOCATE('Example', `sample_1`.`MyString`) > 0

