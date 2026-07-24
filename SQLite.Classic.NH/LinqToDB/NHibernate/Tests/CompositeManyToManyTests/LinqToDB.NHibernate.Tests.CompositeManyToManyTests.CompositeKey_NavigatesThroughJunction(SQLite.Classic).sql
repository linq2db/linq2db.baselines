-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_coursestudent]


-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_students]


-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_courses]


INSERT INTO l2dbnh_courses (title, deptid, courseno) VALUES (@p0, @p1, @p2);@p0 = 'Algorithms' [Type: String (0:0:0)], @p1 = 10 [Type: Int32 (0:0:0)], @p2 = 101 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_courses (title, deptid, courseno) VALUES (@p0, @p1, @p2);@p0 = 'Databases' [Type: String (0:0:0)], @p1 = 20 [Type: Int32 (0:0:0)], @p2 = 201 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_students (name, campusid, roll) VALUES (@p0, @p1, @p2);@p0 = 'Ann' [Type: String (0:0:0)], @p1 = 1 [Type: Int32 (0:0:0)], @p2 = 5 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_students (name, campusid, roll) VALUES (@p0, @p1, @p2);@p0 = 'Bob' [Type: String (0:0:0)], @p1 = 2 [Type: Int32 (0:0:0)], @p2 = 6 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_students (name, campusid, roll) VALUES (@p0, @p1, @p2);@p0 = 'Cy' [Type: String (0:0:0)], @p1 = 3 [Type: Int32 (0:0:0)], @p2 = 7 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_coursestudent (deptid, courseno, campusid, roll) VALUES (@p0, @p1, @p2, @p3);@p0 = 10 [Type: Int32 (0:0:0)], @p1 = 101 [Type: Int32 (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)], @p3 = 5 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_coursestudent (deptid, courseno, campusid, roll) VALUES (@p0, @p1, @p2, @p3);@p0 = 10 [Type: Int32 (0:0:0)], @p1 = 101 [Type: Int32 (0:0:0)], @p2 = 2 [Type: Int32 (0:0:0)], @p3 = 6 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_coursestudent (deptid, courseno, campusid, roll) VALUES (@p0, @p1, @p2, @p3);@p0 = 20 [Type: Int32 (0:0:0)], @p1 = 201 [Type: Int32 (0:0:0)], @p2 = 3 [Type: Int32 (0:0:0)], @p3 = 7 [Type: Int32 (0:0:0)]

-- SQLite.Classic SQLite
SELECT
	[o].[name]
FROM
	[l2dbnh_courses] [c_1]
		INNER JOIN [l2dbnh_coursestudent] [j] ON [j].[deptid] = [c_1].[deptid] AND [j].[courseno] = [c_1].[courseno]
		INNER JOIN [l2dbnh_students] [o] ON [o].[campusid] = [j].[campusid] AND [o].[roll] = [j].[roll]
WHERE
	[c_1].[deptid] = 10 AND [c_1].[courseno] = 101
ORDER BY
	[o].[name]


select student2_.name as col_0_0_ from l2dbnh_courses course0_ inner join l2dbnh_coursestudent students1_ on course0_.deptid=students1_.deptid and course0_.courseno=students1_.courseno inner join l2dbnh_students student2_ on students1_.campusid=student2_.campusid and students1_.roll=student2_.roll where course0_.deptid=@p0 and course0_.courseno=@p1 order by student2_.name asc;@p0 = 10 [Type: Int32 (0:0:0)], @p1 = 101 [Type: Int32 (0:0:0)]

