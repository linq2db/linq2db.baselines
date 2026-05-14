-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	CONCAT('Element ', Coalesce(`r`.`VarCharTextNullable`, ''), ' Text1'),
	CONCAT('Element ', `r`.`VarCharText`, ' Text2'),
	CONCAT('Element ', Coalesce(`r`.`NVarCharTextNullable`, ''), ' Text3'),
	CONCAT('Element ', `r`.`NVarCharText`, ' Text4'),
	CONCAT('Element ', Coalesce(CAST(`r`.`VarCharTextNullable` AS CHAR(255)), ''), ' Text11'),
	CONCAT('Element ', CAST(`r`.`VarCharText` AS CHAR(255)), ' Text12'),
	CONCAT('Element ', Coalesce(CAST(`r`.`NVarCharTextNullable` AS CHAR(255)), ''), ' Text13'),
	CONCAT('Element ', CAST(`r`.`NVarCharText` AS CHAR(255)), ' Text14')
FROM
	`StringConcatTypedEntity` `r`
ORDER BY
	`r`.`Id`

