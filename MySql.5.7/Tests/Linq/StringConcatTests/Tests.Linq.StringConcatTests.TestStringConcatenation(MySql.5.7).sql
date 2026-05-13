-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`Id`,
	Concat('Element ', Coalesce(`r`.`VarCharTextNullable`, ''), ' Text1'),
	Concat('Element ', `r`.`VarCharText`, ' Text2'),
	Concat('Element ', Coalesce(`r`.`NVarCharTextNullable`, ''), ' Text3'),
	Concat('Element ', `r`.`NVarCharText`, ' Text4'),
	Concat('Element ', Coalesce(CAST(`r`.`VarCharTextNullable` AS CHAR(255)), ''), ' Text11'),
	Concat('Element ', CAST(`r`.`VarCharText` AS CHAR(255)), ' Text12'),
	Concat('Element ', Coalesce(CAST(`r`.`NVarCharTextNullable` AS CHAR(255)), ''), ' Text13'),
	Concat('Element ', CAST(`r`.`NVarCharText` AS CHAR(255)), ' Text14')
FROM
	`StringConcatTypedEntity` `r`
ORDER BY
	`r`.`Id`

