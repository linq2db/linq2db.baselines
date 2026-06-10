SELECT (
    SELECT COUNT(*)
    FROM `MmCourseMmStudent` AS `m`
    INNER JOIN `Courses` AS `c` ON `m`.`CoursesId` = `c`.`Id`
    WHERE `s`.`Id` = `m`.`StudentsId`)
FROM `Students` AS `s`
ORDER BY `s`.`Id`


-- MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`MmCourseMmStudent` `j`
				INNER JOIN `Courses` `o` ON `o`.`Id` = `j`.`CoursesId`
		WHERE
			`s`.`Id` = `j`.`StudentsId`
	)
FROM
	`Students` `s`
ORDER BY
	`s`.`Id`



