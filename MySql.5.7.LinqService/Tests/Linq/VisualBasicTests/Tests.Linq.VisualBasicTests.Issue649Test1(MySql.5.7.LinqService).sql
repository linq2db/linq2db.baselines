BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`a_Person`.`personid`,
	`a_Person`.`personname`,
	MAX(`VBIt`.`added`)
FROM
	`activity649` `VBIt`
		INNER JOIN `person649` `a_Person` ON `VBIt`.`personid` = `a_Person`.`personid`
WHERE
	`VBIt`.`added` >= STR_TO_DATE('2017-01-01 00:00:00.000', '%Y-%m-%d %H:%i:%s.%f')
GROUP BY
	`a_Person`.`personid`,
	`a_Person`.`personname`

