SELECT `s`.`Id`
FROM `Students` AS `s`
WHERE NOT EXISTS (
    SELECT 1
    FROM `MmCourseMmStudent` AS `m`
    INNER JOIN `Courses` AS `c` ON `m`.`CoursesId` = `c`.`Id`
    WHERE (`s`.`Id` = `m`.`StudentsId`) AND (`c`.`Title` = 'History'))
ORDER BY `s`.`Id`


-- MariaDB.10.MySqlConnector MariaDB

SELECT
	`s`.`Id`
FROM
	`Students` `s`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`MmCourseMmStudent` `c_1`
				INNER JOIN `Courses` `o` ON `o`.`Id` = `c_1`.`CoursesId`
		WHERE
			`s`.`Id` = `c_1`.`StudentsId` AND `o`.`Title` = 'History'
	)
ORDER BY
	`s`.`Id`



