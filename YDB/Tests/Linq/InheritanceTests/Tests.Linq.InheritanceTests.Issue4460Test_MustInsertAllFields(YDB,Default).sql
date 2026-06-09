INSERT ASYNC BULK Issue4460Table(Id, Code, Name, Surname)

-- YDB Ydb

SELECT
	t1.Code as Code,
	t1.Id as Id,
	t1.Name as Name,
	t1.Surname as Surname
FROM
	Issue4460Table t1

