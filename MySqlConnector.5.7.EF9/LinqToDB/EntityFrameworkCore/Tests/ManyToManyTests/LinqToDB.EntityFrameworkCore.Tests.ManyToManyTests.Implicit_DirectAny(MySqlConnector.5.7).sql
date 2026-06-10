SELECT `s`.`Id`
FROM `Students` AS `s`
WHERE EXISTS (
    SELECT 1
    FROM `MmCourseMmStudent` AS `m`
    INNER JOIN `Courses` AS `c` ON `m`.`CoursesId` = `c`.`Id`
    WHERE (`s`.`Id` = `m`.`StudentsId`) AND (`c`.`Title` = 'Physics'))
ORDER BY `s`.`Id`


-- MySql.5.7.MySqlConnector MySql57

SELECT
	`s`.`Id`
FROM
	`Students` `s`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmCourseMmStudent` `c_1`
				INNER JOIN `Courses` `o` ON `o`.`Id` = `c_1`.`CoursesId`
		WHERE
			`s`.`Id` = `c_1`.`StudentsId` AND `o`.`Title` = 'Physics'
	)
ORDER BY
	`s`.`Id`



