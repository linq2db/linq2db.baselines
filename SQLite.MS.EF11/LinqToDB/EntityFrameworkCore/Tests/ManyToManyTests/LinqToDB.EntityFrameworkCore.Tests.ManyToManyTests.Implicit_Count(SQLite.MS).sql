SELECT (
    SELECT COUNT(*)
    FROM "MmCourseMmStudent" AS "m"
    WHERE "s"."Id" = "m"."StudentsId")
FROM "Students" AS "s"
ORDER BY "s"."Id"


-- SQLite.MS SQLite
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[MmCourseMmStudent] [j]
				INNER JOIN [Courses] [o] ON [o].[Id] = [j].[CoursesId]
		WHERE
			[s].[Id] = [j].[StudentsId]
	)
FROM
	[Students] [s]
ORDER BY
	[s].[Id]



