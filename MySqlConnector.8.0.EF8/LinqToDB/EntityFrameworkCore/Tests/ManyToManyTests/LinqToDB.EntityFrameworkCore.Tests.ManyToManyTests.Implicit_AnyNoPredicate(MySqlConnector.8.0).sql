SELECT `s`.`Id`
FROM `Students` AS `s`
WHERE EXISTS (
    SELECT 1
    FROM `MmCourseMmStudent` AS `m`
    INNER JOIN `Courses` AS `c` ON `m`.`CoursesId` = `c`.`Id`
    WHERE `s`.`Id` = `m`.`StudentsId`)
ORDER BY `s`.`Id`


-- MySql.8.0.MySqlConnector MySql80

SELECT
	`s`.`Id`
FROM
	`Students` `s`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmCourseMmStudent` `j`
				INNER JOIN `Courses` `o` ON `o`.`Id` = `j`.`CoursesId`
		WHERE
			`s`.`Id` = `j`.`StudentsId`
	)
ORDER BY
	`s`.`Id`



